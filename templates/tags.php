<?php namespace ProcessWire; ?>

<div id='page-headline'> 
<?php // pageHeadline() => _func.php => line: 163
   echo pageHeadline('fa-tags');?>
</div>

<div id='body'>

<div class='cotent-tag'>
	<?php
		$items = page()->children('limit=30');
		// blogCat() => _func.php => line: 468
		echo blogCat($items, 'fa-tag', $l_load);
    ?>
</div>    

    <?php // pagination() => _func.php => line: 218
      echo pagination($items);?>

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