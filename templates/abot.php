<?php namespace ProcessWire;?>

<div id='page-headline'> 
<?php // pageHeadline() => _func.php => line: 163
   echo pageHeadline('fa-users');?>
</div>

<div id='header-img' class='header-image'>
 
    <div class="grid-middle cotent-about">

    <?php
        foreach (page()->images as $img) {
           echo "<div class='col-3_md-6_col-sm-12'>
                    <a href='$img->url'>
                      <img class='img-body' $l_load='$img->url' alt=''>
                    </a>
                 </div>";
        }
    ?>
        <div class="col-6_md-12_sm-12">
            <?=page()->txtarea_1?>
        </div>

    </div><!-- /.cotent-about -->

</div><!-- /.header-img -->


<div id='body'>

<?=page()->body?>

<h1><i class="fa fa-users" aria-hidden="true"></i> <?=__('Show My Team');?></h1>

<div class="content-team grid-4_md-2_sm-1-spaceBetween">
<?php 
$team = page()->rep_1;
    foreach ($team as $item): 
       $img = $item->img_1 ? $item->img_1 : '';
       $str_phone = str_replace(' ', '', "href='tel:$item->txt_3'");
?>

<div class='col'>

    <div class="user-profile">

        <div class="body">

            <h3>
                <i class="fa fa-eercast" aria-hidden="true"></i>
                <?=$item->txt_1?>
            </h3>

                <?php if($img) : ?>

                <a class='img-prof' href='<?=$img->url?>'>
                    <img class='hover-img' src="<?=$img->url?>" alt="<?=$item->txt_1?>">
                </a>   
        
                <?php endif; ?>

            <p><?=$item->headline?></p>    

        </div><!-- /.body -->

        <div class="user-info">
            <ul>
                <li><a href='mailto:<?=$item->txt_2?>'><i class="fa fa-envelope-o" aria-hidden="true"></i> <?=$item->txt_2?></a></li>
                <li class='hide_large'><a <?=$str_phone?>><i class="fa fa-phone" aria-hidden="true"></i> <?=$item->txt_3?></a></li>
                <li class='hide_tablet'><i class="fa fa-phone" aria-hidden="true"></i> <?=$item->txt_3?></li>
            </ul>
        </div><!-- /.user-info -->

        <div class='social-profile'>
        <?php // socialProfiles() => ( twitter,facebook,youtube ) => _func.php =>  line: 568
                echo socialProfiles($item->txtarea_1);?>
        </div><!-- /.social-profile -->

    </div><!-- /.user-profile -->

</div><!-- /.col -->

<?php endforeach; ?>

</div><!-- /.content-team -->

<?php $children = page()->children("limit=2");
if(count($children )) : ?>

<h1>
 <i class="fa fa-paw" aria-hidden="true"></i>
 <?=__('More About Us');?>
</h1>

<div class="grid-center more-about">
<?php foreach ($children as $child) :
$img = '';
if(count($child->images )) {
    $img_f = $child->images->first->size('520', 'auto');
    $w = $img_f->width;
    $h = $img_f->height;
    // SHOW FIRST IMAGE
    $img .= "<img class='hover-img' $l_load='{$img_f->url}' width='$w' height='$h' alt='$child->title'>";   
} 
?>

<div class="col-4_md-12">
    <a class='img-center' href='<?=$child->url?>'>
       <?=$img?>
    </a>
</div>
    
    <div class="col-8_md-12">
        <h2><?=$child->title;?></h2>
        <p><?=limitText($child->body,450);?> ... [ ]
           <a class='btn-out' href='<?=$child->url;?>'> <?= __('Read More &raquo;')?></a>
        </p>
    </div>
        
<?php endforeach; ?>

</div><!-- /.more-about -->
<?php endif; ?>

 <?php // pagination() => _func.php => line: 218
  echo pagination($children);?>

</div><!-- /#body -->

<div id='content-sidebar' pw-append>

    <?php 
        // listChild() =>  _func.php => line:  341
        $cat = pages()->get('/categories/')->children()->find("limit=12");
        echo listChild( $cat, __('Show Categories') );

        // listChild() =>  _func.php => line:  341
        $some_tags = pages()->get('/tags/')->children()->find("limit=12, sort=random");
        echo listChild( $some_tags, __('Popular Tags') );

       // listChild() =>  _func.php => line: 341
       $cat = pages()->get('/blog/')->children()->find("limit=12, sort=random");
       echo listChild( $cat, __('Popular Posts') );
    ?>

</div><!-- /#content-sidebar -->