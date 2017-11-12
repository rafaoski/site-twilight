<?php namespace ProcessWire;
// IF SUBMIT IMAGES
if ($_FILES['images']['name'][0] == true) {

// Set Maximum Files
$max_files = 3;
// Find Created Page id
$get_id = pages()->get("name=$p_name");
// Final destination Folder
$upload_path = $pages->get($get_id->id)->images->path;
// instantiate the class and give it the name of the HTML field
$p_images = new WireUpload('images');
// tell it to only accept 3 file
$p_images->setMaxFiles($max_files);
// Set Max File Size to 1MB or 2MB => (1024*1024*2)
$p_images->setMaxFileSize(1024*1024);
// tell it to rename rather than overwrite existing files
$p_images->setOverwrite(false);
// have it put the files in their final destination. this should be okay since
// the WireUpload class will only create PW compatible filenames
$p_images->setDestinationPath($upload_path);
// tell it what extensions to expect
$p_images->setValidExtensions(array('jpg', 'jpeg', 'png', 'gif'));
// execute upload and check for errors
$files = $p_images->execute();
// Run a count($files) test to make sure there are actually files; if so, proceed; if not, generate getErrors()
if(!count($files))
{
$err = __("Sorry, but you need to add a Photo File like ( 'jpg', 'jpeg', 'png', 'gif' ) !!! ... Max Size ( 1MB ) !!!");
// ADD SOME SESSION MESSAGE
$session->info = "<div class='alert-d'><h1>{$err}</h1></div>";
// TRASH OR DELETE FILE IF NOT EXSIST IMG FILE
// $pages->delete($get_id);
     // or
$pages->trash($get_id);

// Redirect
    $session->redirect('./');

}

// Check If To Many Files
if( count($_FILES['images']['name']) > $max_files )
{
$err = __("To Many Images ( MAX 3 Image ) !!! ");
// ADD SOME SESSION MESSAGE
$session->info = "<div class='alert-d'><h1>{$err}</h1></div>";
// TRASH OR DELETE FILE IF NOT EXSIST IMG FILE
// $pages->delete($get_id);
     // OR Only Trash
$pages->trash($get_id);

// Redirect
    $session->redirect('./');

}

// turn off output formatting, if it's on
$p->of(false);

// SET IMAGES VALUE
foreach ($files as $file) {
    // $item .= $upload_path.$file . ',';
        // SET IMAGES FIELD
        $p->set("images",$file);
}

// SAVE IMAGE **************** /
$p->save();
$mess_img = __('You Also Submit Some File IMG');
}
