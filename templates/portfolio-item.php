<?php namespace ProcessWire; ?>

<div id='page-headline'> 
<?php // pageHeadline() => _func.php => line: 163
   echo pageHeadline('fa-paw');?>
</div>

<div id='body' pw-prepend>

<ul class='cat-port'>
        <?php
            $top_list = '';
                $top_list .= listCat($page,'ref_4','fa-th');
                // SHOW LIST
                echo $top_list;
        ?>
</ul>

    <div class="add-to-any">
        <?php // ADD TO ANY ( SHARE BUTTONS https://www.addtoany.com/ ) _func.php =>  line: 605
            echo toAny(); ?>
    </div>

</div>

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

