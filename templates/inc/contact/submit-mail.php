<?php namespace ProcessWire;
// GET SUBJECT MESSAGE
$pg_subj = page()->txt_2 ? page()->txt_2 :  __('Message From ') . $homepage->httpUrl;
$my_subject = $pg_subj;
$success_m = __('Your Message Has Been Sent :)');
// IF SUBMIT PHONE NUBMER
$p_nam = $input->post->phone ? __('Phone:') : '';

// CREATE NEW MAIL
$m = wireMail();
    $m->to($your_mail)->from($your_mail);
    $m->subject($my_subject)
      ->body("$n: $name, $e: $email, $p_nam $phone, $sub: $subject")
      ->bodyHTML("<h4>$n: $name</h4npm > <h4>$e: $email</h4> <h4>$p_nam $phone</h4> <h4>$sub: $subject</h4>");
  // Get Attachment Image
  if($files != '') {
    foreach ($files as $file) {
      $m->attachment($upload_path.$file);
    }
  }
  // Get Attachment PDF
  if($doc != '') {
    foreach ($doc as $pdf) {
      $m->attachment($upload_path.$pdf);
    }
  }
  // Send Form
    $m->send();

// SUBMIT WELCOME MESSAGE TO USER E-MAIL
    $m = wireMail();
    $m->to($email)->from($your_mail);
    $m->subject($my_subject)
      ->bodyHTML($welcome_message);
// Send Form
    $m->send();

// SHOW SUCCESS MESSAGE
$succ_m = "<h1 class='alert-s'>$success_m</h1>";
$succ_m .= '<h3>' . __('Your Message') . '</h3>';
$succ_m .= "<ul>";
$succ_m .= "<li><b>$n : </b>$name</li>";
$succ_m .= "<li><b>$e : </b>$email</li>";
$succ_m .= $phone ? "<li><b>$p_n :</b> $phone</li>" : '';
$succ_m .= "<li><b>$sub : </b>$subject</li>";
$succ_m .= $mess_img ? "<li><i class='fa fa-file-image-o' aria-hidden='true'></i> $mess_img</li>" : '';
$succ_m .= $mess_pdf ? "<li><i class='fa fa-file-pdf-o' aria-hidden='true'></i> $mess_pdf</li>" : '';
$succ_m .= "</ul>";
  // SET SESSION INFO
    $session->info = $succ_m;
      // REDIRECT WITH MESSAGE
       $session->redirect('./');