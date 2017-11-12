<?php namespace ProcessWire; ?>

<div id='page-headline' class='blog-headline'>

    <?php
        // pageHeadline() => _func.php => line: 163
            echo pageHeadline('fa-bullseye');
    ?>
</div>

<div id='body' pw-prepend>

    <div class="add-to-any">
        <?php // ADD TO ANY ( SHARE BUTTONS https://www.addtoany.com/ ) _func.php =>  line: 605
            echo toAny(); ?>
    </div>

</div>

<div id='content-sidebar' pw-append>

   <?php
    // listChild() =>  _func.php => line: 341
        $cat = pages()->get('/categories/')->children()->find("limit=12");
        echo listChild( $cat, __('Show Categories') );

    // listChild() =>  _func.php => line: 341
        $some_tags = pages()->get('/tags/')->children()->find("limit=12, sort=random");
        echo listChild( $some_tags, __('Popular Tags') );

    // listChild() =>  _func.php => line: 341
       $cat = pages()->get('/blog/')->children()->find("limit=12");
       echo listChild( $cat, __('Latest Posts') );

    // listChild() =>  _func.php => line:  341
        $list_authors = pages()->get('/authors/')->children()->find("limit=12");
        echo listChild( $list_authors, __('Show Authors') );
    ?>

</div>

