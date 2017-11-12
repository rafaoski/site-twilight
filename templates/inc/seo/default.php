<?php namespace Processwire; ?>
<meta property="og:url" content="<?=page()->httpUrl?>" />
    <meta property="og:type" content="website" /> 
    <meta property="og:title" content="<?=page()->seo->headline ? page()->seo->headline : page()->title;?>" />
<?php if(page()->seo->summary) : ?>
    <meta property="og:description" content="<?=page()->seo->summary?>">
<?php endif; ?>
<?php if (count(page()->images) ) : ?>
    <meta property="og:image" content="<?=page()->images->first->httpUrl();?>" />
<?php endif; ?>