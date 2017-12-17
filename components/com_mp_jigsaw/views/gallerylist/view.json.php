<?php
/**
 * Joomla! 2.5 - Erweiterungen programmieren
 *
 * Standard-Ansicht com_mythings im Frontend.
 *
 * @package    Mythings
 * @subpackage Frontend
 * @author     chmst.de, webmechanic.biz
 * @license	   GNU/GPLv2 or later
 */
defined('_JEXEC') or die;

/* Import der Basisklasse JView */
jimport('joomla.application.component.view');

/**
 * Erweiterung der Basisklasse JView
 */
class Mp_JigsawViewGalleryList extends JViewLegacy
{
  /**
   * Überschreiben der Methode display
   *
   * @param string $tpl Alternative Layoutdatei, leer = 'default'
   */
  protected $path;
    
  public function display($tpl = null)
  {
    //JFactory::getDocument()->setMimeEncoding( 'application/json' );
    //JResponse::setHeader( 'Content-Disposition', 'attachment; filename="'.$this->getName().'.json"' );
    //JRequest::setVar('tmpl','component');
    //echo json_encode($data);
    
      
          /* getItem() aus JModelList aufrufen */
        $this->path	= $this->get('Path');
        
        //$this->listDirImages('modules/mod_mp_jigsaw/gallery');
        $this->listDirImages($this->path);
  }
  
  private function listDirImages($dir) { //$dir is the name of the directory you want to list the images.
    
    $preg = "/.(jpg|gif|png|jpeg)/i"; //match the following files, can be changed to limit or extend range, ie: png,jpeg,etc.
    $images = array();
    $id = 0;
    if( $checkDir = opendir($dir) ) {
        while( $file = readdir($checkDir) ) {
            if(preg_match($preg, $file)) {
                if( !is_dir($dir . "/" . $file) ) {
                    $images[basename($file)]= $file;
                    $id++;
                }
            }
        }
    }
    $data = json_encode($images);
    echo $_GET['callback'] . '(' . $data . ');';
}
}
