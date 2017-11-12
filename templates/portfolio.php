<?php namespace ProcessWire; 
// https://codepen.io/creotip/pen/dfjeF
?>

<div id='page-headline'> 
    <?php // pageHeadline() => _func.php => line: 163
    echo pageHeadline('fa-th');?>
</div>

<div id='body'>

<div class="toolbar mb2 mt2">
    <button class="btn fil-cat" data-rel="all"><?=__('All')?></button>
        <?php 
            $cat_port = pages()->get("/portfolio-categories/")->children();
            foreach ($cat_port as $cat) {
            echo "<button class='btn fil-cat' data-rel='{$cat->name}'>{$cat->title}</button>"; 
            } 
        ?>
</div> 
 
<div style="clear:both;"></div>

<div id="portfolio">

<?php
    $portfolio = page()->children('limit=12');
        foreach ($portfolio  as $item) {
        $out = '';
            
        $port_cat = $item->ref_4->each("{name} "); 

    $out .= "<div class='tile scale-anm $port_cat all'>";
    $out .= "<a href='{$item->url}'><h3>{$item->title}</h3></a>";
    $out .= "<a href='{$item->url}'>" . firstImg($item) . "</a>";
    $out .= "</div>";

    echo $out;

} ?>

</div><!-- #/portfolio -->

<?php // pagination() => _func.php => line: 218
  echo pagination($portfolio);?>
  
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

<pw-region id="bottom-region">

<script>
// https://codepen.io/creotip/pen/dfjeF?editors=1010
window.addEventListener("load", function(){
		var selectedClass = "";
		$(".fil-cat").click(function(){ 
		selectedClass = $(this).attr("data-rel"); 
     $("#portfolio").fadeTo(100, 0.1);
		$("#portfolio div").not("."+selectedClass).fadeOut().removeClass('scale-anm');
    setTimeout(function() {
      $("."+selectedClass).fadeIn().addClass('scale-anm');
      $("#portfolio").fadeTo(300, 1);
    }, 300); 
		
	});
});
</script>
</pw-region>