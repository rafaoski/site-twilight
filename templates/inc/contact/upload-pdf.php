<?php namespace ProcessWire;
// IF SUBMIT PDF FILE
if ($_FILES['file_1']['name'][0] == true) {

// Set Maximum Files
$max_files = 3;
// Find Created Page id
$get_id = pages()->get("name=$p_name");
// Final destination Folder
$upload_path = $pages->get($get_id->id)->file_1->path;
// instantiate the class and give it the name of the HTML field
$p_pdf = new WireUpload('file_1');
// tell it to only accept 3 file
$p_pdf->setMaxFiles($max_files);
// Set Max File Size to 1MB or 2MB => (1024*1024*2)
$p_pdf->setMaxFileSize(1024*1024);
// tell it to rename rather than overwrite existing files
$p_pdf->setOverwrite(false);
// have it put the files in their final destination. this should be okay since
// the WireUpload class will only create PW compatible filenames
$p_pdf->setDestinationPath($upload_path);
// tell it what extensions to expect
$p_pdf->setValidExtensions(array('pdf'));
// execute upload and check for errors
$doc = $p_pdf->execute();
// Run a count($doc) test to make sure there are actually files; if so, proceed; if not, generate getErrors()
if(!count($doc))
{
 $err = __("Sorry, but you need to add a PDF FILE ( 'pdf' ) !!! ... Max Size ( 1MB ) !!!");
    // ADD SOME SESSION MESSAGE
   $session->info = "<div class='alert-d'><h1>{$err}</h1></div>";
// TRASH OR DELETE FILE IF NOT EXSIST PDF FILE
    // $pages->delete($get_id);
         // or
    $pages->trash($get_id);

    // Redirect
    $session->redirect('./');
}

// Check If To Many Files
if( count($_FILES['file_1']['name']) > $max_files )
{
 $err = __("To Many Documents ( MAX 3 DOC PDF ) !!!");
// ADD SOME SESSION MESSAGE
$session->info = "<div class='alert-d' uk-alert><h1>{$err}</h1></div>";
// TRASH OR DELETE FILE IF NOT EXSIST IMG FILE
// $pages->delete($get_id);
     // OR Only Trash
$pages->trash($get_id);
// Redirect
    $session->redirect('./');
}

// $upd_p->setOutputFormatting(false);
$p->of(false);

// SET IMAGES VALUE
foreach ($doc as $pdf) {
        // SET IMAGES FIELD
        $p->set("file_1",$pdf);
}
// SAVE IMAGE **************** /
$p->save();
$mess_pdf = __('You Also Submit Some File PDF');

}
