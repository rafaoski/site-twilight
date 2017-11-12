<?php namespace ProcessWire; ?>

<div id='page-headline'>
<?php // pageHeadline() => _func.php => line: 163
   echo pageHeadline('fa-tag');?>
</div>

<div id='body'>

    <div class='post-body'>
        <?php
            // $posts = pages()->get('/blog/')->children("tags=$page, limit=10");
            $posts = pages()->find("template=blog-post, tags=$page, limit=12");
            // blogPost() => _func.php => line: 433
            echo blogPost($posts, 'fa-free-code-camp', $l_load);
        ?>
    </div>

    <?php // pagination() => _func.php => line: 218
       echo pagination($posts);?>
</div>

<div id='content-sidebar' pw-append>
 <?php 
        // listChild() =>  _func.php => line:  341
        $cat = pages()->get('/categories/')->children()->find("limit=12");
        echo listChild( $cat, __('Show Categories') );

       // listChild() =>  _func.php => line: 341
       $cat = pages()->get('/blog/')->children()->find("limit=12, sort=random");
       echo listChild( $cat, __('Popular Posts') );
 ?>
</div>
