<?php namespace ProcessWire; ?>

<div id='content-sidebar' pw-append>
<?php 
    // listChild() =>  _func.php => line: 341
    $some_portfolios = pages()->get('/portfolios/')->children()->find("limit=12, sort=random");
    echo listChild( $some_portfolios, __('Popular Portfolio') );

        // listChild() =>  _func.php => line:  341
        $cat = pages()->get('/categories/')->children()->find("limit=12");
        echo listChild( $cat, __('Blog Categories') );

        // listChild() =>  _func.php => line:  341
        $some_tags = pages()->get('/tags/')->children()->find("limit=12");
        echo listChild( $some_tags, __('Show Tags') );

       // listChild() =>  _func.php => line: 341
       $cat = pages()->get('/blog/')->children()->find("limit=12, sort=random");
       echo listChild( $cat, __('Popular Posts') );

?>
</div>