<?php namespace ProcessWire;
$h_url  = pages()->get(1)->httpUrl;
$seo = page()->seo->headline ? page()->seo->headline : page()->title;
$toogle_seo = page()->template != 'blog-post' ? 'default' : 'blog';
$homepage = pages()->get('/');
$options = pages()->get('/options/');
// $ajax = $this->wire('config')->ajax;
// $ajax = config()->ajax;
// USE LIGHT OR DARK SKIN
$skin = $options->ref_1->get("name=enable-quiet-light") ? 'light' : 'master.min';
// Enable Gulp Watch Or LIGHT / DARK SKIN
$css = $options->ref_1->get("name=enable-gulp-watch") ? 'master' : $skin;
// Lazy Load Img ( I added only on the home page => home.php )
$l_load = $options->ref_1->get("name=enable-img-lazy-load") ? 'data-src' : 'src';
// DISABLE COMMENTS
$dis_comm =  pages()->get('/options/')->ref_1->get("name=disable-comments") || page()->check_1;
// CUSTOM PAGE OPTIONS 
$opt_p = page()->ref_2;
// DISABLE ENABLE SIDEBAR
$dis_sid = $opt_p ? $opt_p->get("name=disable-sidebar") : '';
$en_cont = $opt_p ? $opt_p->get("name=enable-container") : '';
// LANGUAGE OPTIONS
$href_l = '';
$lang_code = '';
// Multilingual Menu
   if(isset($languages)) {
	// handle output of 'hreflang' link tags for multi-language
	// this is good to do for SEO in helping search engines understand
	// what languages your site is presented in
	foreach($languages as $language) {
	// if this page is not viewable in the language, skip it
		if(!$page->viewable($language)) continue;
	// get the http URL for this page in the given language
		$lang_url = $page->localHttpUrl($language);
	// hreflang code for language uses language name from homepage
        $hreflang = $homepage->getLanguageValue($language, 'name');
    // IF DELETE the EN in homepage setting add default lang
        if ( $hreflang == 'home' )  { $hreflang = 'en'; }
	// output the <link> tag: note that this assumes your language names are the same as required by hreflang.
        $href_l .= "\n\t<link rel='alternate' hreflang='$hreflang' href='$lang_url' />\n";
    // GET LANG CODE
        if(page()->httpUrl == $lang_url) {
          $lang_code .= $hreflang;
        }
	}
   }

// RSS FEED BLOG PAGE
   if($page->id == 1041 && $input->urlSegment1 == 'rss') {
       $rss = $modules->get("MarkupRSS");
       $rss->render($page->children("limit=12"));
   die();
   }
//  https://processwire.com/talk/topic/14381-fatal-error-cannot-redeclare-function/
   include_once("./_func.php"); 