var m_width_jigsaw;
var m_height_jigsaw;
var m_flash_jigsaw;
var m_rotation_jigsaw;
var m_preview_jigsaw;
var m_pieces_jigsaw;
var m_bgColor_jigsaw;

var m_chgImage_jigsaw;
var m_myImage_jigsaw;

var m_folderGallery_jigsaw;
var m_pathGallery_jigsaw;
var m_uriBase_jigsaw;

var m_doResize_jigsaw;
var m_pathResize_jigsaw;
var m_urlResizePath_jigsaw;
var m_siteurl_jigsaw;


function jigsaw_pictureChange() {
	var e = document.getElementById("selPicture");
	var sPic = e.value;
	rewriteFlashObject(sPic);
}

function jigsaw_rewriteFlashObject(sPic) {
        
	var e = document.getElementById("jigsaw_flashObject");
	var s = "";
        s += "<object id='myJigsawFlash' classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000'";
	s += " codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'";
	s += " width='"+m_width_jigsaw+"' height='"+m_height_jigsaw+"' align='middle'>";  
	s += "<param name='allowScriptAccess' value='sameDomain' />";
	s += "<param name='allowFullScreen' value='false' />";
	s += "<param name='movie' value='"+m_flash_jigsaw+"' />";
	s += "<param name='flashvars' value='myPic=" + sPic + "&myRot=" + m_rotation_jigsaw + "&myThumbnail=" + m_preview_jigsaw+ "&myPieces=" + m_pieces_jigsaw+"' />";
	s += "<param name='quality' value='high' />";
	s += "<param name='menu' value='false' />";
	s += "<param name='bgcolor' value='"+m_bgColor_jigsaw+"' />";
        s += "<param name='wmode' value='transparent' />";
	s += "<embed src='"+m_flash_jigsaw+"' flashvars='myPic=" + sPic + "&myRot=" + m_rotation_jigsaw + "&myThumbnail=" + m_preview_jigsaw + "&myPieces=" + m_pieces_jigsaw+"' quality='high' bgcolor='"+m_bgColor_jigsaw+"'  swLiveConnect='true' ";
	s += "    width='"+m_width_jigsaw+"' height='"+m_height_jigsaw+"' name='jigsaw' menu='false' align='middle' allowScriptAccess='sameDomain' ";
	s += "    allowFullScreen='false' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer' />";
	s += "</object>";	     
        s += "<div style='width:"+m_width_jigsaw+"px;text-align: right;font-size:12px;'><a href='http://mypuzzle.org/jigsaw/'>Jigsaw Puzzles</a></div>";
        e.innerHTML = s;
}

function jigsaw_showGallery() {
        
    m_chgImage_jigsaw = false;
    $('#jigsaw_gallery').bPopup({
        onOpen: function() {
            jigsaw_getFlashVars();
            jigsaw_getData();
        },
        onClose: function() { 
            if (m_chgImage_jigsaw==true) {
                jigsaw_rewriteFlashObject(m_myImage_jigsaw); 
            }
        }
    });
}

function jigsaw_getFlashVars() {
    
    m_width_jigsaw = $('#flashvar_width_jigsaw').text();
    m_height_jigsaw = $('#flashvar_height_jigsaw').text();
    m_flash_jigsaw = $('#var_flash_jigsaw').text();
    m_rotation_jigsaw = $('#flashvar_rotation_jigsaw').text();
    m_preview_jigsaw = $('#flashvar_preview_jigsaw').text();
    m_pieces_jigsaw = $('#flashvar_pieces_jigsaw').text();
    m_bgColor_jigsaw = $('#flashvar_bgcolor_jigsaw').text();
    
    m_myImage_jigsaw = $('#flashvar_startPicture_jigsaw').text();
    
    m_uriBase_jigsaw = $('#var_uribase_jigsaw').text();
    m_folderGallery_jigsaw = $('#var_galleryFolder_jigsaw').text();
    m_pathGallery_jigsaw = $('#var_galleryPath_jigsaw').text();
    
    m_doResize_jigsaw = $('#var_doresize_jigsaw').text()
    m_folderResize_jigsaw = $('#var_resizeFolder_jigsaw').text();
    m_pathResize_jigsaw = $('#var_resizePath_jigsaw').text();
    m_siteurl_jigsaw = $('#var_siteurl_jigsaw').text();
    
}


function jigsaw_getData(){
    // getting json data
    var item;
    var sUrl = m_uriBase_jigsaw+'index.php?option=com_mp_jigsaw&view=gallerylist&format=json&path='+m_folderGallery_jigsaw;
    $.getJSON(sUrl,'callback=?', function(data){
        $('#jigsaw_image_container').empty();
        $.each(data, function(key, val) {
            item = $('#jigsaw_imgWrapTemplate').clone();
            item.attr({'style': ''});
            item.find('.jigsaw_imageTitle').text(key);
            item.find('img').attr('src',m_pathGallery_jigsaw+'/'+val);
            
            item.find('img').click(function(){      
                m_myImage_jigsaw = $(this).attr("src");
                m_chgImage_jigsaw = true;
                if (m_doResize_jigsaw==1) {
                    var imgTitle = $(this).parent().find('.jigsaw_imageTitle').text();
                    //console.log(m_dirGallery_jigsaw+'/'+imgTitle);
                    jigsaw_getResizedImage(m_pathGallery_jigsaw+'/'+imgTitle);
                    
                }
                else
                {
                    $('#jigsaw_gallery').bPopup().close();
                }
                
            });
            $('#jigsaw_image_container').append(item);
        });       
        return('');
    });//end getJson
}// end getData

function jigsaw_getResizedImage(selImage) {
    
    var sUrl = m_uriBase_jigsaw+'index.php?option=com_mp_jigsaw&view=resizeimage&format=json&path='+m_folderGallery_jigsaw+'&imageurl='+selImage+'&resizepath='+m_folderResize_jigsaw;
    //console.log(sUrl);
    $.getJSON(sUrl,'callback=?', function(data){
        
        if (data == null) return;

        $.each(data, function(key, val) {
            //console.log(key+":"+val);
            if (key == 'file') 
            {
                m_myImage_jigsaw = m_pathResize_jigsaw + '/' + val;
            }
        });
        $('#jigsaw_gallery').bPopup().close();
    });
}
