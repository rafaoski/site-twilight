<?php namespace Processwire;?>
<meta property="og:url" content="<?=page()->httpUrl?>"/>  
    <meta property="og:type" content="article"/>
    <meta property="og:title" content="<?=page()->seo->headline ? page()->seo->headline : page()->title;?>" />
<?php 
if(count(page()->authors)) {
    foreach (page()->authors as $key) {
        echo "\t<meta property='og:author' content='{$key->title}'>\n";
    }
   } 
if(page()->seo->summary) : ?>
    <meta property="og:description" content="<?=page()->seo->summary?>">
<?php endif;
if (count(page()->images) ) : ?>
    <meta property="og:image" content="<?=page()->images->first->httpUrl();?>">
<?php endif; ?>