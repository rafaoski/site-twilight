<?php namespace ProcessWire;
// SIMPLE HONEYPOT
if( $input->post->firstname == true){
    die();
}
// RESET ERROR MESSAGE
$err_mess = '';

// IF NOT ADDING EMAIL TO PAGE
if($page->email == '') {
    // ERROR MESSAGE
    $err = __("Add Email Address to Contact Page !!! ");
    // ADD SOME SESSION MESSAGE
    $err_mess .= "<h1>{$err}</h1>";
}

// CHECK ONLY IMPORTANT FIELD ( SANITIZER )                
if($name && $email && $subject == false) {
    // ERROR MESSAGE
    $err = __("Fill in the fields correctly !!! ... ");
    // ADD SOME SESSION MESSAGE
    $err_mess .= "<h1>{$err}</h1>";
}

// Check Title
    if( $name  == '' ) {
        // ERROR MESSAGE
        $err = __("Add Some name Text !!!");
        // ADD SOME SESSION MESSAGE
        $err_mess .= "<h1>{$err}</h1>";
    }

    if(strlen($name) > 120 ) {
        // ERROR MESSAGE
        $err = __("Too Many Letter => Limit = 120");
        // ADD SOME SESSION MESSAGE
        $err_mess .= "<h1>{$err}</h1>";
    }

// Check Mail
    if($email == false) {
        $b_mail = $sanitizer->text($input->post->mail);
        // ERROR MESSAGE
        $err = __("<b>$b_mail</b> Is a Invalid email address or is Empty !!!");
        // ADD SOME SESSION MESSAGE
        $err_mess .= "<h1>{$err}</h1>";
    }

    if(strlen($email) > 80 ) {
        // ERROR MESSAGE
        $err = __("E-Mail Too Many Letter => Limit = 80");
        // ADD SOME SESSION MESSAGE
        $err_mess .= "<h1>{$err}</h1>";
    }

// Check Phone
    if(strlen($phone) > 50 ) {
        // ERROR MESSAGE
        $err = __("Phone Too Many Letter => Limit = 50");
        // ADD SOME SESSION MESSAGE
        $err_mess .= "<h1>{$err}</h1>";
    }

// https://www.noupe.com/development/php-regular-expressions.html
    $p = $input->post->phone;
    if($p != '' && !preg_match('/^[0-9 \-\+\(\)]+$/',$phone)) {
        // ERROR MESSAGE
        $err = __("Phone Number Must Be IN THIS FORMAT (+99) 99-315-8 ... Only Numbers, Bracket And Dash !!!");
        // ADD SOME SESSION MESSAGE
        $err_mess .= "<h1>{$err}</h1>";
    }

// Check Subject
    if( $subject  == '' ) {
        // ERROR MESSAGE
        $err = __("Add Some Subject Text !!!");
        // ADD SOME SESSION MESSAGE
        $err_mess .= "<h1>{$err}</h1>";
    }

    if(strlen($subject) > 2150 ) {
      // ERROR MESSAGE
      $err = __("Too Many Letter => Limit = 2100 ");
      // ADD SOME SESSION MESSAGE
      $err_mess .= "<h1>{$err}</h1>";
    }

 // IF SOME ERRORS
if($err_mess) {
     $session->info = "<div class='alert-d'>$err_mess</div>";
     $session->redirect('./');
}   