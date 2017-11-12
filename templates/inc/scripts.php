<?php namespace ProcessWire;?>
<script>
/* HEADROOM.JS */
window.addEventListener("load", function(){
var myElement = document.querySelector("header");
var headroom = new Headroom(myElement, {
/*  "offset": 205, */
  "tolerance": 5,
  classes: {
    initial: "animated",
    pinned: "bounceInDown",
    unpinned: "bounceOutUp"
  }
});
headroom.init();
});
    /* IMG LAZY LOAD =>  Listen to the Initialized event https://github.com/verlok/lazyload */
    window.addEventListener('LazyLoad::Initialized', function (e) {
        lazyLoadInstance = e.detail.instance;
    }, false);
    lazyLoadOptions = {
        /* your lazyload options */
    };

/* IF USE JQUERY => LOAD async or defer MUST ADD (window.addEventListener('load', function () {});) | Hide the right sidebar when clicked */
// window.addEventListener('load', function () {
//         $(".sidebar").click(function(){
//             $(this).hide();
//         });
// });

window.addEventListener("load", function(){
  $.cookieBar({
         message: '<?= __('This website uses cookies to ensure you get the best experience on our website.');?>',
acceptButton: true,
acceptText: '<?= __('Go it!');?>',
acceptFunction: null,
declineButton: false,
declineText: '<?= __('Disable Cookies');?>',
declineFunction: null,
policyButton: true,
policyText: '<?=__('Privacy Policy')?>',
policyURL: '<?=$h_url . __('privacy-policy'); ?>',
autoEnable: true,
acceptOnContinue: false,
acceptOnScroll: false,
acceptAnyClick: false,
expireDays: 365,
renewOnVisit: false,
forceShow: false,
effect: 'slide',
element: 'body',
append: false,
fixed: true,
bottom: true,
zindex: '999',
domain: '<?=$h_url?>',
referrer: '<?=$h_url?>'
     });
  });


/* METIS MENU */
window.addEventListener("load", function(){
$(function () {
      $('#menu1').metisMenu({
        preventDefault: false,
      });

  });
})

/* METIS MENU EFFECT TOGGLE */
window.addEventListener("load", function(){
    $(".open-menu").click(function(){
        $(".metis-item").slideToggle( "slow");
    });
});

    /*Init Scrool Top*/
    window.addEventListener("load", function(){
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('.scrollup').fadeIn();
            } else {
                $('.scrollup').fadeOut();
            }
        });

        $('.scrollup').click(function () {
            $("html, body").animate({
                scrollTop: 0
            }, 600);
            return false;
        });

    });
    
window.addEventListener("load", function(){
    $('#status').fadeOut(); 
    $('#preloader').delay(50).fadeOut('slow');
    $('body').delay(50).css({'overflow':'visible'});
})
</script>
<?php
// Usage: echo gAnalitycs('UA-1230102165-1'); => _func.php => line: 622
if($options->txt_1) {
    echo gAnalitycs($options->txt_1);
}
?>