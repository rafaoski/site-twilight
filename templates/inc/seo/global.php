<?php namespace Processwire;
// GET DEFAULT SETTINGS SEO
if($options->global_seo->txt_1){ echo "<meta property='og:site_name' content='{$options->global_seo->txt_1}'/>\n\t";}
if($options->global_seo->txt_2){ echo "<meta property='fb:app_id' content='{$options->global_seo->txt_2}' />\n\t";}
if($options->global_seo->txt_3){ echo "<meta property='fb:admins' content='{$options->global_seo->txt_3}' />\n\t";}