<?php
/**
 * Joomla! 2.5 - Erweiterungen programmieren
 *
* Datenmodell, Ausgabe eines einzelnen Items
 *
 * @package    Mythings
 * @subpackage Frontend
 * @author     chmst.de, webmechanic.biz
 * @license	   GNU/GPLv2 or later
 */
defined('_JEXEC') or die;

/* Import der Basisklasse JModelItem für genau einen Datensatz */
jimport('joomla.application.component.modelitem');

/**
 * Erweiterung der Basisklasse JModelItem
 */
class Mp_JigsawModelResizeImage extends JModelItem
{
  /**
   * Die Methode wird überschrieben, um den Tabellennamen und die
   * benötigten Spalten anzugeben.
   *
   * @return $result - Ergebnis der Datenbankabfrage
   */
    public function getImageUrl()
    {

	  /* Applikationspbjekt anfpordern  */
      $app = JFactory::getApplication();

	  /* Die Id des Datensatzes, den der Benutzer angeklicht hat  */
      return $app->input->get('imageurl', 0, 'varchar');

    }
    public function getResizePath()
    {

	  /* Applikationspbjekt anfpordern  */
      $app = JFactory::getApplication();

	  /* Die Id des Datensatzes, den der Benutzer angeklicht hat  */
      return $app->input->get('resizepath', '', 'varchar');

    }
    
    public function getResizeImage()
    {
        
        //$app = JFactory::getApplication();
        $url = $this->getImageUrl();
        $url = str_replace(' ', '%20', $url);
        $resizePath = $this->getResizePath();
        $width = "640";
        $height = "440";
        
        $file_path = parse_url( $url );
        $file_path = $_SERVER['DOCUMENT_ROOT'] . $file_path['path'];
        $orig_size = getimagesize($url);

        $image_src[0] = urldecode($url);
        $image_src[1] = $orig_size[0];
        $image_src[2] = $orig_size[1];

        $file_info = pathinfo( urldecode($url) );
        $extension = '.'. $file_info['extension'];
        
        
        // the image path without the extension
        $no_ext_path = $file_info['dirname'].'/'.$file_info['filename'];

        //calculate new dimensions
        $orig_width = $image_src[1];
        $orig_height = $image_src[2];
        $origRatio = $orig_width / $orig_height;
        $maxRatio = $width / $height;
        //echo('origRatio='.$origRatio.',maxRatio='.$maxRatio.'<br/>');
        $bSizeHeight = false;

        if ($origRatio < $maxRatio) {
            $ratio = $height / $orig_height;
            $newWidth = intval($orig_width * $ratio);
            $newHeight = $height;
            $bSizeHeight = true;
        } else {
            $ratio = $width / $orig_width;
            $newHeight = intval($orig_height * $ratio);
            $newWidth = $width;
            $bSizeHeight = false;
        }
        //echo('Width orig:'.$orig_width.',max:'.$width.',new:'.$newWidth.'<br/>');
        //echo('Height orig:'.$orig_height.',max:'.$height.',new:'.$newHeight.'<br/>');

        //get resized file-name
        $newfilename = $file_info['filename'].'-'.$newWidth.'x'.$newHeight.$extension;
        $upload_path = $resizePath.'/'.$newfilename;

        if ($newHeight == $orig_height && $newWidth = $orig_width) {
            $vt_image = array (
                    'url' => $resizePathUrl.'/'.$file_info['filename'].$extension,
                    'file' => $file_info['filename'].$extension,
                    'width' => $newWidth,
                    'height' => $newHeight
            );

            return json_encode($vt_image);
            //die();
        }

        if ( file_exists( $upload_path ) ) {

                $vt_image = array (
                        'url' => $upload_path,
                        'file' => $newfilename,
                        'width' => $newWidth,
                        'height' => $newHeight
                );

                return json_encode($vt_image);
        } else {

            //load image
            $myImage = new SimpleImage();
            $myImage->load($url);
            if ($orig_height > $orig_width) {
                $myImage->resizeToHeight($height);
            }

            $myImage->resize($newWidth, $newHeight);
            $myImage->save($upload_path);

            // resized output
            $vt_image = array (
                    'url' => $upload_path,
                    'file' => $newfilename,
                    'width' => $myImage->getWidth(),
                    'height' => $myImage->getHeight()
            );
            return json_encode($vt_image);
            //return $app->input->get('resizeimage', '', 'varchar');
        }
        
    }
}
class SimpleImage {
 
    var $image;
   var $image_type;
 
   function load($filename) {
      $filename = str_replace(' ', '%20', $filename);
      $image_info = getimagesize($filename);
      $this->image_type = $image_info[2];
      if( $this->image_type == IMAGETYPE_JPEG ) {
 
         $this->image = imagecreatefromjpeg($filename);
      } elseif( $this->image_type == IMAGETYPE_GIF ) {
 
         $this->image = imagecreatefromgif($filename);
      } elseif( $this->image_type == IMAGETYPE_PNG ) {
 
         $this->image = imagecreatefrompng($filename);
      }
   }
   function isImage($url) {
        $params = array('http' => array('method' => 'HEAD'));
        $ctx = stream_context_create($params);
        $fp = @fopen($url, 'rb', false, $ctx);
        if (!$fp)
            return false;  // Problem with url      
        $meta = stream_get_meta_data($fp);     
        if ($meta === false) {         
            fclose($fp);         
            return false;  // Problem reading data from url     
        }      
        $wrapper_data = $meta["wrapper_data"];     
        if(is_array($wrapper_data)) {       
            foreach(array_keys($wrapper_data) as $hh) {           
                if (substr($wrapper_data[$hh], 0, 19) == "Content-Type: image") // strlen("Content-Type: image") == 19            
                {             
                    fclose($fp);             
                    return true;           
                }       
            }     
        }      
        fclose($fp);     
        return false;
   }
   function save($filename, $image_type=IMAGETYPE_JPEG, $compression=100, $permissions=null) {
 
      if( $image_type == IMAGETYPE_JPEG ) {
         $saved = imagejpeg($this->image,$filename,$compression);
      } elseif( $image_type == IMAGETYPE_GIF ) {
         imagegif($this->image,$filename);
      } elseif( $image_type == IMAGETYPE_PNG ) {
         imagepng($this->image,$filename);
      }
      if( $permissions != null) {
 
         chmod($filename,$permissions);
      }
      
   }
   function output($image_type=IMAGETYPE_JPEG) {
 
      if( $image_type == IMAGETYPE_JPEG ) {
         imagejpeg($this->image);
      } elseif( $image_type == IMAGETYPE_GIF ) {
 
         imagegif($this->image);
      } elseif( $image_type == IMAGETYPE_PNG ) {
 
         imagepng($this->image);
      }
   }
   function getWidth() {
 
      return imagesx($this->image);
   }
   function getHeight() {
 
      return imagesy($this->image);
   }
   function resizeToHeight($height) {
 
      $ratio = $height / $this->getHeight();
      $width = $this->getWidth() * $ratio;
      $this->resize($width,$height);
   }
 
   function resizeToWidth($width) {
      $ratio = $width / $this->getWidth();
      $height = $this->getheight() * $ratio;
      $this->resize($width,$height);
   }
 
   function scale($scale) {
      $width = $this->getWidth() * $scale/100;
      $height = $this->getheight() * $scale/100;
      $this->resize($width,$height);
   }
 
   function resize($width,$height) {
      $new_image = imagecreatetruecolor($width, $height);
      imagecopyresampled($new_image, $this->image, 0, 0, 0, 0, $width, $height, $this->getWidth(), $this->getHeight());
      $this->image = $new_image;
   }      

}