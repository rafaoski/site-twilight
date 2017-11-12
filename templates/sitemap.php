<?php namespace ProcessWire; ?>
<div id='body'>
  <?php // renderNavTree() => _func.php => line: 173
   echo renderNavTree($homepage, 4); ?>
</div>

<div id='content-sidebar' pw-append>

    <?php 
        // listChild() =>  _func.php => line:  341
        $cat = pages()->get('/categories/')->children("limit=12");
        echo listChild( $cat, __('Show Categories') );

        // listChild() =>  _func.php => line:  341
        $some_tags = pages()->get('/tags/')->children("limit=12, sort=random");
        echo listChild( $some_tags, __('Popular Tags') );

        // listChild() =>  _func.php => line:  341
        $list_authors = pages()->get('/authors/')->children("limit=12");
        echo listChild( $list_authors, __('Show Authors') );

       // listChild() =>  _func.php => line: 341
       $cat = pages()->get('/blog/')->children("limit=12, sort=random");
       echo listChild( $cat, __('Popular Posts') );
    ?>

</div>