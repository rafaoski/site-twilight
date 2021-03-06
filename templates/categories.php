<?php namespace ProcessWire; ?>

<div id='page-headline'>
<?php // pageHeadline() => _func.php => line: 163
   echo pageHeadline('fa-sitemap');?>
</div>

<div id='body'>

<div class='cotent-cat'>
	<?php
		$categories = page()->children('limit=18');
		// blogPost() => _func.php => line: 433
		echo blogCat($categories, 'fa-th', $l_load);
	?>
</div>

 <?php // pagination() => _func.php => line: 218
 echo pagination($categories);?>

</div>

<div id='content-sidebar' pw-append>
   <?php 
        // listChild() =>  _func.php => line: 341
        $some_tags = pages()->get('/tags/')->children()->find("limit=12, sort=random");
        echo listChild( $some_tags, __('Popular Tags') );

       // listChild() =>  _func.php => line: 341
       $cat = pages()->get('/blog/')->children()->find("limit=12, sort=random");
       echo listChild( $cat, __('Popular Posts') );
    ?>
</div>
