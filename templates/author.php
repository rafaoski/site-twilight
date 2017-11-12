<?php namespace ProcessWire; ?>

<div id='page-headline'>
<?php // pageHeadline() => _func.php => line: 163
   echo pageHeadline('fa-user-secret');?>
</div>

<div id='body' pw-append>

<br>

<div class='post-body'>
	<?php
  // $posts = pages()->get('/blog/')->children("authors=$page, limit=12");
		$posts = pages()->find("template=blog-post, authors=$page, limit=12");
		// blogPost() => _func.php => line: 433
		echo blogPost($posts, 'fa-lightbulb-o', $l_load);
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

        // listChild() =>  _func.php => line:  341
        $some_tags = pages()->get('/tags/')->children()->find("limit=12, sort=random");
        echo listChild( $some_tags, __('Popular Tags') );

        // listChild() =>  _func.php => line:  341
        $list_authors = pages()->get('/authors/')->children()->find("limit=12");
        echo listChild( $list_authors, __('Show Authors') );

       // listChild() =>  _func.php => line: 341
       $cat = pages()->get('/blog/')->children()->find("limit=12, sort=random");
       echo listChild( $cat, __('Popular Posts') );
    ?>

</div>
