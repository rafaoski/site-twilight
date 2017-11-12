<?php namespace ProcessWire;
// Lang Options inside _init.php line: 22
    $code = $lang_code ? $lang_code : 'en';
// TRASH DEMO DATA ( Uncomment below to move the demo content to the trash ) _func.php => line: 675   
    // trashDemoData($trash = true);  
?>
<!DOCTYPE html>
<html lang="<?=$code;?>" prefix="og: http://ogp.me/ns#">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?=$seo?></title>
    <meta name="Description" content="<?= page()->seo != '' ? page()->seo->summary : ''?>">
    <link rel="icon" href="<?=$options->img_2->url?>"/>
    <link rel="stylesheet" type="text/css" href="<?php echo urls()->templates?>all-assets/css/<?php echo $css?>.css" />
    <!-- <link rel="stylesheet" href="<?php // echo urls()->templates?>all-assets/css/custom.css"/> -->
    <?php
    // GET SEO FILE
        include_once "inc/seo/global.php";
        include_once "inc/seo/$toogle_seo.php";
    // HREFLANG IF ENABLE LANGUAGE => _init.php line: 41
        echo $href_l;
    ?>
    <style>
        <?php // customCSS() => _func.php line: 638
              echo customCSS()?>
    </style>
    <pw-region id="top-region"></pw-region>
</head>
<body>
<!-- Preloader -->
<div id="preloader"><div id="status">&nbsp;</div></div>

<header id="content-header" class="header header-wrapper">

<nav class="topbar-nav">

<?php // metisMenu() => BASIC NAV => _func.php line: 87
      echo metisMenu($lang_code,['categories','authors']);?>

    <div id='logo' class='logo'>
            <?php if($options->img_1) {
                echo  "<a href='$homepage->url'><img $l_load='{$options->img_1->url}' alt='logo'></a>";
            } ?>
    </div>

</nav>

</header><!-- /#content-header -->

<div id='wrapper-grid' class='wrapper-g <?php if($dis_sid) { echo 'wrapper-sid'; }?>'>

    <div id='breadcrumbs' class='bread'>
        <?php // BREADCRUMBS => _func.php => line: 144
            echo breadCrumbs(); ?>
    </div>

    <div id="content-body" class="content <?php if($en_cont) { echo 'container'; }?>">

        <div id='page-headline'>
            <?php // PAGE TITLE OR HEADLINE => _func.php => line: 163
                echo pageHeadline();?>
        </div>

            <div id='header-img' class='header-image'>
                <?php if (count(page()->images) && page()->template->name != 'home' ) {
                    $img_url = page()->images->first->url;
                    echo "<a href='$img_url' class='img-body'><img $l_load='$img_url' alt='$page->name'></a>";
                } ?>
            </div>

                <div id='body' class='body-page'>
                    <?= page()->body; ?>
                </div><!-- /#body -->

            <?php
                // PREV NEXT PAGE => _func.php => line: 298
                    echo pagePrevNext();
                // EDIT PAGE => line: 525
                    echo editPage();
                // IF DISABLE COMMENTS  => _init.php => line: 13
                    if(!$dis_comm) {
                // COMMENTS WITH PAGINATIONS  => _func.php => line: 243
                    echo commentsPagination();
                    }
            ?>
    </div><!-- /#content-body -->

<?php // IF PAGE => Custom Options Disable Sidebar => _init.php line 20
if(!$dis_sid) : ?>

    <div id="content-sidebar" class="sidebar">

        <?php
        // SEARCHFORM searchform('add-class') => _func.php => line: 328
            echo searchForm();
        // SHOW GLOBAL SIDEBAR FROM Options Page
        if($opt_p) {
            if($opt_p->get("name=enable-global-sidebar")) echo $options->sidebar;
        }
        // SHOW SIDEBAR FROM DEFAULT FIELD sidebar
            echo page()->sidebar;
        ?>

    </div><!-- /#content-sidebar -->

<?php endif;  ?>

</div><!--/#wrapper-grid -->

<footer id='content-footer' class="footer <?php if($dis_sid) { echo 'footer-search'; }?>">

    <?php // IF PAGE Custom Options Disable Sidebar _init.php line: 19
        if($dis_sid) : ?>
    <div class='search-form'>
    <?php // SEARCHFORM searchform('add-class') => _func.php => line: 328
        echo searchForm();?>
    </div>
    <?php endif; ?>

    <div id='social-profile' class="social-prof">
    <?php // socialProfiles() => ( twitter,facebook,youtube ) => _func.php =>  line: 568
          echo socialProfiles($options->txtarea_1);?>
    </div>

    <div class='powered'>

        <p>
            <i class="fa fa-free-code-camp" aria-hidden="true"></i>&nbsp; <?= __('Powered by');?> &copy;
                <a href='http://processwire.com'><?= __('ProcessWire Open Source CMS/CMF'); ?></a>
            <i class="fa fa-gift" aria-hidden="true"></i>
        </p>

    </div>

    <a href='#' class='scrollup'><i class='fa fa-arrow-circle-o-up fa-3x' aria-hidden='true'></i></a>

</footer>

<?php
// PW DEBUG pwDebug() => _func.php => line: 538
echo pwDebug(); ?>

<script defer src='<?=urls()->templates?>all-assets/js/master.min.js'></script>
<!-- <script defer src='<?php // echo urls()->templates?>all-assets/js/jquery.cookiebar.js'></script> -->
<pw-region id="bottom-region"></pw-region>

<?php
// INCLUDE CUSTOM SCRIPTS
    include 'inc/scripts.php';
?>
</body>
</html>
