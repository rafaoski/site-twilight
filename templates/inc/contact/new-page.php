<?php namespace ProcessWire;
// START CREATING CHILDREN CONTACT PAGE
$p = new Page();
// Template To Save Contact Form
   $p->template = "contact-item";
// Parent Page
    $p->parent = $pages->get("/contact/");
// turn off output formatting, if it's on
    $p->of(false);
// START SAVING INPUT FIELDS
    $p->title = $name;
    $p_name = $sanitizer->pageName(time() . '-' . $name);
    $p->name = $p_name;
    $p->txtarea_1 = $subject;
    $p->email = $email;
// ADD DATE    
    $p->txt_1 = $sanitizer->text(date("Y-m-d | H:i"));
// ADD IP https://processwire.com/api/ref/session/get-i-p/
    $p->txt_2 = $sanitizer->text($session->getIP());
    $p->txt_3 = !empty($phone) ? $phone : 'NO PHONE NUMBER';
//  https://processwire.com/talk/topic/632-create-a-hidden-page-via-api/
//  http://cheatsheet.processwire.com/page/page-status/
    $p->addStatus(Page::statusHidden); 
    // $p->addStatus(Page::statusLocked);
    // $p->addStatus(Page::statusUnpublished);
// Page Save
    $p->save();