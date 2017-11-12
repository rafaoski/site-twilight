<?php namespace ProcessWire; ?>

<div id='page-headline'>
<?php // pageHeadline() => _func.php => line: 163
   echo pageHeadline('fa-first-order');?>
</div>

<div id='body'>

    <div class='post-body'>
        <?php
            $posts = pages()->get('/portfolios/')->children("ref_4=$page, limit=12");
            // blogPost() => _func.php => line: 433
            echo blogPost($posts, 'fa-free-code-camp', $l_load);
        ?>
    </div>

    <?php // pagination() => _func.php => line: 218
    echo pagination($posts);?>

</div>

<div id='content-sidebar' pw-append>
<?php 
    // listChild() =>  _func.php => line: 341
    $some_portfolios = pages()->get('/portfolios/')->children()->find("limit=12, sort=random");
    echo listChild( $some_portfolios, __('Popular Portfolio') );
?>
</div>
