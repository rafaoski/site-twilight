<?php namespace ProcessWire;
// https://processwire.com/api/variables/input/
// https://processwire.com/api/variables/sanitizer/
// GET YOUR E-MAIL FROM PAGE
      $your_mail = $sanitizer->email($page->email);
// SANITIZE FIELDS FROM CONTACT FORM  
      $name = $sanitizer->text($input->post->name);
      $email = $sanitizer->email($input->post->email);
      $subject = $sanitizer->textarea($input->post->subject);
      $phone = $sanitizer->text($input->post->phone);