<?php namespace ProcessWire; ?>

<div id="body" pw-append>

  <?php // CUSTOM HEADING =>  _func.php => line: 417
        echo customHeading('Show Categories', 'fa-th', 'h2'); ?>

    <div class='cotent-cat'>
      <?php
        $categories = pages()->get('/categories/')->children("limit=18");
        // BLOG POST => post-children, img-width, font-awesome icon, lazy-load =>  _func.php => line: 347
        echo blogCat($categories, 'fa-th', $l_load);
      ?>
    </div>

    <br>

    <?php // CUSTOM HEADING =>  _func.php => line: 417
        echo customHeading('Show Tags', 'fa-tags', 'h2'); ?>

    <div class='cotent-tag'>
      <?php
        $tags = pages()->get('/tags/')->children("limit=26, sort=random");
        // BLOG POST => post-children, img-width, font-awesome icon, lazy-load =>  _func.php => line: 347
        echo blogCat($tags, 'fa-tag', $l_load);
        ?>
    </div> 

<?php // CUSTOM HEADING =>  _func.php => line: 417
      echo customHeading('Show Popular Posts'); 

    $gallery = pages()->get('/blog/')->children("limit=3, sort=random");
    // TILED GALLERY => tiledGallery() => _func.php line: 465
    echo tiledGallery($gallery, $l_load);
?>

</div><!-- /#body -->

<div id='content-sidebar' pw-append>
  <?php 
      // LIST CHILD => _func.php => line: 125
      $list = page()->children("limit=12");
      echo listChild( $list, __('Browse the Site') );
  ?>
</div>
<pw-region id="bottom-region"></pw-region>