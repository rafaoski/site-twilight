<?php namespace ProcessWire;
//  DISABLE SOME IP ADRESS
    $user_ip = $session->getIP();
    $check_ip = explode(',', $page->txtarea_1);
if(in_array($user_ip, $check_ip) ) {
   $err = __("You Are On The BLACK LIST");
// DIE DIE     
   die("<h1>$err</h1>");   
// OR ERROR -- 404 -- BAD REQUEST     
   // throw new Wire404Exception();
// OR Redirect
   // $session->redirect($homepage->httpUrl);
}

// ENABLE FILE FIELDS ( IMG PDF )
    $img_on = page()->ref_3->get("name=enable-images");
    $pdf_on = page()->ref_3->get("name=enable-pdf");

// RESET SOME VALUES
include 'inc/contact/reset-messages.php';

// LABEL INPUT OR BUTTONS
$n = __('Name') ;
$e =  __('E-Mail');
$p_n =  __('Phone');
$sub =  __('Subject');
$ref_p = __('Refresh Page');
?>

<div id='page-headline' pw-append>
   <?php // SHOW SESSION INFO
         echo $session->info; 
    ?>
</div>

<div id='body' pw-append>

<?php 
// MAIL, PHONE NUMBER
if(page()->txt_3) {

$contact = explode(",", page()->txt_3);
foreach ($contact as $key) {
  // IF NOT MAIL ( PHONE )       
      if(strpos($key, "@") != true) {
        $str_phone = str_replace(' ', '', "href='tel:$key'");
              echo "<h1 class='hide_large'><a $str_phone><i class='fa fa-phone' aria-hidden='true'></i> $key</a></h1>";
              echo "<h1 class='hide_tablet'><i class='fa fa-phone' aria-hidden='true'></i> $key</h1>";
        } 

  // IF MAIL
      if(strpos($key, "@")) { 
        $str_mail = str_replace(' ', '', "mailto:$key"); 
            echo "<h1><a href='$str_mail'><i class='fa fa-envelope' aria-hidden='true'></i> $key</a></h1>";
        } 
  }
}   
// Turn off repeating E-Mail messages every 2 minutes
// FIND USER BY IP    
$find_ip = pages()->find("template=contact-item,txt_2=$user_ip,include=hidden")->last();
// FIND TOO MANY MESSAGE ( CHECK CONTACT PAGE CUSTOM OPTIONS )
$find_all_ip = pages()->find("template=contact-item,txt_2=$user_ip,include=hidden");

$max_messages = page()->int_1 ? page()->int_1 : 16;
if(count($find_all_ip) >= $max_messages ) {
$err = __("Too Many Messages");    
$c = count($find_all_ip);
// DIE DIE 
die("<h1>$err ($c) MAX ($max_messages)</h1>");    
// OR ERROR -- 404 -- BAD REQUEST     
   // throw new Wire404Exception();
// OR Redirect
//    $session->redirect($homepage->httpUrl);
}
// RESET VALUE
$user_form_date = 0;
// IF IP EXSISTS
if($find_ip == true) {
      $user_form_date = substr($find_ip->name, 0, strpos($find_ip->name, '-')) + 120;
// COUNT DOWN TIME
     $count_down = $user_form_date - $datetime->date('ts');
} 

if($datetime->date('ts') < $user_form_date) :
// RESET OUT       
        $out = '';
 // ERROR MESSAGE
        $err =  __("Wait 2 Minutes before sending the message again");
// ADD SOME SESSION MESSAGE
        $out .= "<div class='alert-d'><h1>{$err}</h1>";
        $out .= "<h2 id='timer_div'>$count_down</h2></div>";
        $out .= "</div><!-- /#body -->";
        echo $out;
else :
// FORM WAS SUBMITTED SO WE PROCESS THE FORM
        if($input->post->submit) {
// https://processwire.com/api/ref/session/c-s-r-f/
        if($session->CSRF->hasValidToken()) {
// SANITIZER          
        include 'inc/contact/sanitize-values.php';
// CHECK ALL VALUES
        include 'inc/contact/check.php'; 
// CREATE NEW PAGE
        include 'inc/contact/new-page.php'; 
// SAVE IMAGE
        $img_on == true ? include 'inc/contact/upload-img.php' : '';
// SAVE PDF
        $pdf_on == true ? include 'inc/contact/upload-pdf.php' : '';
// WELCOME MESSAGE FORM ***** / 
        include 'inc/contact/welcome-message.php';
// SUBMIT MAIL
        include 'inc/contact/submit-mail.php';
// IF CSRF TOKEN NOT FOUND 
   } else {
// ERROR MESSAGE
     $err =  __("CSRF Wrong ... Fill in all Fields Correctly");
// ADD SOME SESSION MESSAGE
     $session->info = "<div class='alert-d'><h1>{$err}</h1></div>";
// Redirect
     $session->redirect('./');
   }

// SHOW DEFAULT FORM
  } else {
// https://processwire.com/talk/topic/3779-use-csrf-in-your-own-forms/
    $tokenName = $this->session->CSRF->getTokenName();
    $tokenValue = $this->session->CSRF->getTokenValue();
// GET DEFAULT VIEW CONTACT FORM
    include 'inc/contact/contact-form.php';
 }
?>
</div><!-- /#body -->

<div id='content-sidebar' pw-append>

    <?php 
        // listChild() =>  _func.php => line:  341
        $cat = pages()->get('/categories/')->children()->find("limit=12");
        echo listChild( $cat, __('Show Categories') );

        // listChild() =>  _func.php => line:  341
        $some_tags = pages()->get('/tags/')->children()->find("limit=12, sort=random");
        echo listChild( $some_tags, __('Popular Tags') );

        // listChild() =>  _func.php => line:  341
        $list_authors = pages()->get('/authors/')->children()->find("limit=12");
        echo listChild( $list_authors, __('Show Authors') );
    ?>

</div>

<?php
// END IF $datetime->date('ts') < $user_form_date
   endif;
// REMOVE SESSION INFO
    $session->remove('info');
// END => Turn off repeating E-Mail messages every 2 minutes
if($find_ip == true) : ?>
<pw-region id="bottom-region">
   <script type="text/javascript">
        window.addEventListener("load", function(){
        var seconds_left = <?=$count_down?>;
        var interval = setInterval(function() {
        document.getElementById('timer_div').innerHTML = --seconds_left + 's';
                if (seconds_left <= 0){
                        document.getElementById('timer_div').innerHTML = "<a class='btn-out mt' href='./'><?=$ref_p?></a>";
                        clearInterval(interval);
                }
                        }, 1000);
                });
    </script>
</pw-region>
<?php endif; ?>