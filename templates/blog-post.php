<?php namespace ProcessWire; ?>

<div id='page-headline' class='blog-headline'>

    <?php
        // pageHeadline() => _func.php => line: 163
            echo pageHeadline('fa-bullseye');
    ?>

    <ul class='cat-tag'>
        <?php
            $top_list = '';
            $top_list .= "<li class='p-date'><i class='fa fa-clock-o' aria-hidden='true'></i>";
            $top_list .= " | $page->date</li>";
            // listCat() => _func.php => line: 364
                $top_list .= listCat($page,'authors','fa-user');
                $top_list .= listCat($page,'categories','fa-th');
                $top_list .= listCat($page,'tags','fa-tag');
                 // IF DISABLE COMMENTS  => _init.php => line: 13
                    // countComments() _func.php => line 396
                    $top_list .= countComments($page, $dis_comm);
                // SHOW LIST
                echo $top_list;
        ?>
    </ul>

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

<pw-region id="bottom-region">
  <?php if(page()->comments): ?>
    <link rel="stylesheet" href="<?=urls()->FieldtypeComments?>comments.css">
    <script defer src='<?=urls()->FieldtypeComments?>comments.min.js'></script>
    <script defer src="https://static.addtoany.com/menu/page.js"></script>
  <?php endif; ?>
</pw-region>
