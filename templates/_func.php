<?php namespace ProcessWire;
/**
 * langMenu() => LANG MENU => line: 29
 * metisMenu() => BASIC NAV => line: 87
 * breadCrumbs() => BREADCRUMBS => line: 144
 * pageHeadline() => PAGE TITLE OR HEADLINE => line: 163
 * renderNavTree() => SITEMAP => line: 173
 * pagination() => PAGE PAGINATION => line: 218
 * commentsPagination() => COMMENTS WITH PAGINATION => line: 243
 * pagePrevNext() => PREV NEXT PAGE => line: 298
 * searchForm() => SEARCHFORM => line: 328
 * listChild() => LIST CHILD => line: 341
 * listCat() => LIST CATEGORIES, TAGS, AUTHORS => line: 364
 * firstImg() => GET FIRST IMAGE => line: 382
 * countComments() => COMMENTS COUNT => line: 396
 * limitText() => LIMIT TEXT => line: 411
 * customHeading() => CUSTOM HEADING => line: 425
 * blogPost() => BLOG POST => line: 433
 * blogCat() =>  BLOG => CATEGORIES, AUTHORS => line: 468
 * tiledGallery() => TILED GALLERY => line: 490
 * preloadMe() =>  CUSTOM CSS ( PRELOAD SCREEN ) => line: 568
 * editPage() => EDIT PAGE => line: 525
 * pwDebug() => PW DEBUG  =>  line: 538
 * socialProfiles() => SOCIAL PROFILES ( twitter,facebook,youtube ) =>  line: 568
 * toAny() => ADD TO ANY ( SHARE BUTTONS https://www.addtoany.com/ ) =>  line: 605
 * gAnalitycs() => // https://developers.google.com/analytics/devguides/collection/analyticsjs/ => line: 622
 * customCSS() ADD CUSTOM CSS CODE => line: 638
 * trashDemoData() TRASH DEMO DATA => line: 677
*/
// LANGUAGE MENU $lang_code from _init.php => line: 44 ( default => en )
function langMenu($lang_code) {

      if(languages() == true) {

    $has_arrow = count(languages()) > 1 ? 'has-arrow' : 'no-arrow';
          // GET LAZY LOAD ( $lazy = src or data-src)
          $lazy = pages()->get('/options/')->ref_1->get("name=enable-img-lazy-load") ? 'data-src' : 'src';

          $homepage = pages()->get('/');
          $templ = config()->urls->templates;
          $u_l = user()->language->name;
          $u_t = user()->language->title;

            $out = '';
            $out .= "<li class='lang-item metis-item top-$lang_code'>\n";
            $out .= "<a class='$has_arrow' href='#' aria-expanded='false'>";
            // $out .= "<img class='lang-img' $lazy='{$templ}all-assets/img/flags/32x32/{$lang_code}.png' alt='flag-{$u_l}' width='22' height='22'> $u_t";
            $out .= "<span class='fa fa-language'></span> $u_t ";
            $out .= "</a>\n";

    if(count(languages()) > 1) {

      $out .= "<ul aria-expanded='false' class='collapse'>\n";

      foreach(languages() as $language) {

        $url = page()->localUrl($language);
        $hreflang = $homepage->getLanguageValue($language, 'name');
      // is page viewable in this language?
      if(!page()->viewable($language)) {
          continue;
      }
          if($language->id == user()->language->id) {
                  $lang_class = "actual-lang";
          } else {
                  $lang_class = "not-actual";
          }

          // IF DELETE the en in homepage setting add default lang
          if ( $hreflang == 'home' )  { $hreflang = 'en'; }

          $out .= "<li class='menu-lang lang-$hreflang $lang_class'><a hreflang='$hreflang' href='$url'>";
          $out .= "<img class='fa' $lazy='{$templ}all-assets/img/flags/32x32/{$hreflang}.png' alt='flag-{$language->name}'>";
          $out .=  $language->title;
          $out .=  "</a></li>\n";

      } // END FOREACH LOOP

      $out .= "</ul>\n";
    }

    $out .= "</li>\n";
    return $out;
        }  // END IF LANGUAGES TRUE
    }

    // METIS MENU => USAGE => echo metisMenu($lang_code,['categories'])
    function metisMenu($lang_code, $sub_m = array()) {
        $out = '';
        // $url = '#';
        $root = pages()->get("/");
        $children = $root->children();
        // insert the following line
        $children->prepend($root);
        // GET LIST
          $out .= "<ul class='metismenu' id='menu1'>\n";
          $out .= "<li class='open-menu'><a href='#'><i class='fa fa-bars' aria-hidden='true'></i></a></li>\n";

    $out .= langMenu($lang_code);

    // BASIC ITEMS MENU
    foreach($children as $child) {
        $url = $child->url;
        $check_arrow = 'no-arrow';

        $class = '';

    if($child->id == page()->rootParent->id) {
          $class =  "current";
    }
    // IF CHILD NAME == ARRAY NAME => metisMenu($sub_m = array())
    $check  = in_array($child->name, $sub_m);
    $arrow = $check  ? 'has-arrow' : '';

    // SHOW BASIC MENU
            $out .= "<li class='item $class metis-item'>\n";
            $out .= "<a class='$arrow' href='$url' aria-expanded='false'>";
            $out .= $child->txt_1 ? "<span class='fa $child->txt_1'></span> " : '';
            $out .= "$child->title</a>\n";

            if($sub_m) {
                // GET SUB MENU
                if ($check) {
                        $items = pages()->get("/$child->name/")->children("limit=18");

                            $out .= "<ul aria-expanded='false' class='collapse'>";
                                foreach ($items as $item) {
                                    $out .= "<li><a href='$item->url'>";
                                    $out .= $item->txt_1 ? "<span class='fa $item->txt_1'></span> " : '';
                                    $out .= "$item->title";
                                    $out .= "</a>\n</li>\n";
                                }
                            $out .= "</ul>\n";
                    }
                }

            $out .= "</li>\n";

        }
    $out .= "</ul>\n";
        return $out;
    }

// BREADCRUMBS USAGE => echo breadCrumbs()
function breadCrumbs() {
    $out = "<ul class='breadcrumbs'>";

    $parents = page()->parents;

    foreach($parents as $parent) {
        $url = $parent->url;
        $out .= "<li><a href='$url'>{$parent->title} /</a></li>\n";
    }

    // show current / "we are here" page as well, but not as link: (last element)
    $out .= "<li><a class='current' href='#'>" . page()->title . "</a></li>\n";

    $out .= "</ul>";

    return $out;
}

// PAGE TITLE OR HEADLINE USAGE => echo pageHeadline('fa-home');
function pageHeadline($icon = 'fa-ravelry') {
    $tit_head = page()->seo->headline ? page()->seo->headline : page()->title;
    $out = '';
    $out .= "<h1 class='page-hedline'>";
    $out .= "<i class='fa $icon' aria-hidden='true'></i>";
    $out .= " $tit_head</h1>";
    return $out;
}

// SITEMAP USAGE => echo renderNavTree($homepage, 4);
    function renderNavTree($items, $maxDepth = 0, $fieldNames = '', $class = 'nav') {

        // if we were given a single Page rather than a group of them, we'll pretend they
        // gave us a group of them (a group/array of 1)
        if($items instanceof Page) $items = array($items);

        // $out is where we store the markup we are creating in this function
        $out = '';

        // cycle through all the items
        foreach($items as $item) {

            // markup for the list item...
            // if current item is the same as the page being viewed, add a "current" class to it
            $out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

            // markup for the link
            $out .= "<a href='$item->url'>$item->title</a>";

            // if there are extra field names specified, render markup for each one in a <div>
            // having a class name the same as the field name
            if($fieldNames) foreach(explode(' ', $fieldNames) as $fieldName) {
                $value = $item->get($fieldName);
                if($value) $out .= " <div class='$fieldName'>$value</div>";
            }

            // if the item has children and we're allowed to output tree navigation (maxDepth)
            // then call this same function again for the item's children
            if($item->hasChildren() && $maxDepth) {
                if($class == 'nav') $class = 'nav nav-tree';
                $out .= renderNavTree($item->children, $maxDepth-1, $fieldNames, $class);
            }

            // close the list item
            $out .= "</li>";
        }

        // if output was generated above, wrap it in a <ul>
        if($out) $out = "<ul class='$class'>$out</ul>\n";

        // return the markup we generated above
        return $out;
    }

// PAGINATION => USAGE:
// $posts = page()->children('limit=12');
// echo pagination($posts);
function pagination($items) {

    if($items->renderPager()) {

        $out = "<div class='d-flex justify-content-center my-2'>\n
            <nav>";
        $out .= $items->renderPager(array(
            'nextItemLabel' => __('Next') . " &raquo;",
            'previousItemLabel' => "&laquo;" . __(' Previous'),
            'listMarkup' => "<ul class='pagination'>{out}</ul>",
            'itemMarkup' => "<li class='page-item'>{out}</li>",
            'separatorItemLabel' => " ... ",
            'linkMarkup' => "<a class='page-link' href='{url}'>{out}</a>",
            //CURRENT
            'currentLinkMarkup' => "<a class='page-link bg-primary text-white' href='{url}'>{out}</a>",
        ));
            $out .= "</nav>\n
        </div>";
            return $out;
        }
    }

// COMMENTS WITH PAGINATION => USAGE => echo commentsPagination();
function commentsPagination() {

        if (page()->comments) {
    $comm = '';

            $limit = 22;
            $start = (input()->pageNum - 1) * $limit;
            $comments = page()->comments->slice($start, $limit);

            $comm .= $comments->render(array(
             'headline' => "<h3 class=''>" . __('Comments') . "</h3>",
             'commentHeader' => __('Added ') . '{cite}' . __(' in day') . ' {created} {stars} {votes}',
             'dateFormat' => 'm/d/y - H:i',
             'encoding' => 'UTF-8',
            //  'admin' => false, // shows unapproved comments if true
             'replyLabel' => __('Reply'),
           ));

           $comm .= page()->comments->renderForm(array(
             'headline' => '<h2>' . __('Join The Discussion') . '</h2>',
             'pendingMessage' => __('Your comment must be approved by admin'),
             'successMessage' => __('Thanks Your comment has been saved'),
             'errorMessage' => __('There were errors and the comment was not approved'),
             'attrs' => array(
             'id' => 'CommentForm',
             'action' => './',
             'method' => 'post',
             'class' => 'comm-form',
             'rows' => 5,
             'cols' => 50,
             ),
             'labels' => array(
                     'cite' => __('Name'),
                     'email' => __('E-Mail'),
                     'text' => __('Comment'),
                     'submit' => __('Submit'),
                 ),
             ));

             $comm .= "<p class='link-pagination'>";

                      if(input()->pageNum > 1) {
                        $comm .= "<a class='btn btn-outline-primary mx-1' href='./page" . (input()->pageNum - 1) . "'>" . __('&laquo; Previous Comments') . "</a>";
                      }
                      if($start + $limit < count(page()->comments)) {
                        $comm .= "<a class='btn btn-outline-primary mx-1'  href='./page" . (input()->pageNum + 1) . "'>" . __('Next Comments &raquo;') . "</a>";
                      }
                      $comm .= "</p>";

                 return $comm;
        }

     }

// PREV NEXT PAGE => USAGE => echo pagePrevNext()
function pagePrevNext() {

    if (page()->prev->url || page()->next->url ) {

           $prev_p = page()->prev;
           $next_p = page()->next;

        $pr_nx = "";

        $pr_nx .= "<div id='pr-next' class='pr-nxt'>";

        if(page()->prev->url) {
            $pr_nx .= "<a href='$prev_p->url' class='pr-nxpage'>";
            $pr_nx .=  "&laquo; $prev_p->title";
            $pr_nx .= "</a>";
        }

        $pr_nx .=  $prev_p->url && $next_p->url ? "<span class='btn-space'> | </span>" : '';

         if($next_p->url) {
            $pr_nx .= "<a href='$next_p->url' class='pr-nxpage'>";
            $pr_nx .= "$next_p->title &raquo;";
            $pr_nx .= "</a>";
        }
        $pr_nx .= "</div>";
    return $pr_nx;
    }
}

// SEARCHFORM => USAGE => echo searchForm();
function searchForm($class = 'search') {
    $action = pages()->get('template=search')->url;
    $s_input = sanitizer()->entities(input()->whitelist('q'));
        $out = "<form id='search-form' class='$class' action='$action' method='get'>\n";
        $out .= "<input type='text' name='q' placeholder='Search' id='search' value='$s_input' required/>\n";
        $out .= "<button type='submit' name='submit' class='visually-hidden'>\n";
        $out .= "<i class='fa fa-search' aria-hidden='true'></i>&nbsp;" . __('Search');
        $out .= "</button>\n";
        $out .= "</form>\n";
    return $out;
}

// LIST CHILD => USAGE:
// $cat = pages()->get('/categories/')->children("limit=12");
// echo listChild( $cat, __('Show Categories') );
function listChild( $pages, $heading = '' ) {
    // $icon = "<pre>" . var_dump($pages) . "</pre>";
    $id = $pages[0] ? $pages[0]->parentID : '';
    $icon = pages()->get($id)->txt_1;
    $url = pages()->get($id)->url;
    if(count($pages)) {
           $out = '';
           $out .= "<a class='list-c' href='$url'><h3><i class='fa $icon' aria-hidden='true'></i> $heading</h3></a>";
           $out .= "<ul class='nav'>\n";
               foreach($pages as $page) {
                $out .= "<li><p><a href='{$page->url}'>{$page->title}</a><br />";
                if(page()->template == 'home' && $page->seo->summary) {
                  $out .= "<span class='summary'>{$page->seo->summary}</span></p></li>\n";
                }
               }
            $out .= "</ul>";
            return $out;
           }
        }

// LIST CATEGORIES, TAGS, AUTHORS USAGE:
// CREATE FIELDS TYPE => Page Reference like authors
// echo listCat($page,'authors','fa-user')
function listCat($page, $cat_or_tag, $icon = '') {
    if(count($page->$cat_or_tag)) {
        // GET PARENT URL
        $all_cat = $page->$cat_or_tag[0]->parent()->url;
        // GET CURRENT CATEGORY
            $cat = $page->$cat_or_tag->each(
                "<li class='$cat_or_tag'><a href='{url}'>{title}</a></li>\n"
                );
        // ADD LIST
            $allcat_url = "<a href='$all_cat'><i class='fa $icon' aria-hidden='true'></i></a>";
        // SHOW CATEGORIES
            return "<li class='all-$cat_or_tag'>$allcat_url</li>\n $cat";
    }
}

// GET FIRST IMAGE FROM FIELD => images, $l_lod => from _init.php line 11 => USAGE:
// echo firstImg($page, 'data-src', '520');
function firstImg($post, $l_load = 'data-src', $size = '520'){
if( count($post->images) ) {
    $out = '';
    $img = $post->images->first->size($size, 'auto');
    $w = $img->width;
    $h = $img->height;
    // SHOW FIRST IMAGE
    $out .= "<img $l_load='{$img->url}' width='$w' height='$h' alt='$post->title'>";
    return $out;
    }
}

// COMMENTS COUNT => IF NOT DISABLE COMMENTS  => _init.php => line: 13 => USAGE:
// echo countComments($page, $dis_comm);
function countComments($value, $dis_comm) {
    if( count($value->comments) && !$dis_comm) {
        $out = '';
            $id = $value->comments->last()->id;
            $out = "<li class='com-count'><a href='$value->url#Comment$id'>";
            $out .= "<i class='comments fa fa-comment-o' aria-hidden='true'></i> ";
            $out .= count($value->comments);
            $out .= "</a></li>";
            return $out;

    }
}

// LIMIT TEXT => USAGE => echo '<p>' . limitText($page->body, 70) . '</p>';
function limitText($text_field, $limit = 120) {
if ($text_field) {

    $out = '';
    $bd = substr($text_field, 0, $limit);
    $out  .= strip_tags($bd);

} else {
   return "<h4>No Found Body Text</h4>";
}
return $out;
}

// CUSTOM HEADING => USAGE:
// echo customHeading('HOME PAGE', $page->txt_1, 'h1')
// echo customHeading('HOME PAGE', 'fa-home', 'h2');
function customHeading($txt = 'Add Text Heading', $icon = 'fa-eercast', $h = 'h2') {
    $class = mb_strtolower($txt);
    return "<$h class='heading-$icon-$class'><i class='fa $icon' aria-hidden='true'></i>" . __(" $txt") . "</$h>";
  }

// BLOG POST $l_lod from _init.php line 10, Pages => Home/Options/Enable Options/Img Lazy Load
function blogPost($posts, $icon, $l_load) {
// --- DISABLE COMMENTS ---
$dis_comm =  pages()->get('/options/')->ref_1->get("name=disable-comments");
    $out = '';
        foreach ($posts as $post) {
            // REFERENCE TO SINGLE POST
            $h_s = "<a class='post-href' href='$post->url'>";
            $h_e = "</a>";
            // START
            $out .= "<div data-aos='fade-up' data-aos-offset='200' data-aos-easing='ease-in-out' data-aos-duration='600' class='content-item $post->name'>";
            // HEADING
            $out .= "<h3>$h_s<i class='bl-icon fa $icon' aria-hidden='true'></i> ";
            $out .= "$post->title $h_e</h3>\n";
            // LIST AUTHOR OR AUTHORS, POST, CATEGORIES => listCat() _func.php => line 379
            $out .= "<ul class='top-list'>" . listCat($post,'authors','fa-user');
            // POST DATE
            $out .= $post->date ? "<li> <i class='fa fa-clock-o' aria-hidden='true'></i> $post->date</li>" : '';
            // COUNT COMMENTS  => countComments() _func.php => line 409
            $out .=  countComments($post, $dis_comm) . '</ul>' ;
            // IMG firstImg() _func.php => line 395
            $out .= $h_s . firstImg($post,$l_load) . $h_e;
            // listCat() _func.php => line 379
            $out .= "<ul class='cat-tag'>" . listCat($post,'categories','fa-th') . listCat($post,'ref_4','fa-th');
            // listCat() _func.php => line 379
            $out .=  listCat($post,'tags','fa-tag'). '</ul>';
            // BODY limitText() _func.php => line 424
            $out .= "<p>" . limitText($post->body, 90) . " ... ";
            // READ MORE
            $out .=  "<a class='btn-out' href='$post->url'>" . __(' Read More &raquo;') . "</a></p>";
            $out .= "</div>";
        } // END FOREACH LOOP
        return  $out;
    }

 // BLOG => CATEGORIES, AUTHORS => USAGE:
// $tags = pages()->get('/tags/')->children("limit=26, sort=random");
// echo blogCat($tags, 'fa-tag', $l_load);
function blogCat($cat, $icon, $l_load = 'src') {
    $out = '';
        foreach ($cat as $post) {
            $out .= "<a class='content-item $post->name' href='$post->url'>";
            $out .= "<h3><i class='bl-icon fa $icon' aria-hidden='true'></i>&nbsp;";
            $out .= "<span class='title'>$post->title</span></h3>";
          // IMG
          if( count($post->images) ) {
            $img = $post->images->first->size(220, 'auto');
            $w = $img->width;
            $h = $img->height;
            // IMG LAZY LOAD ( $l_load ) FROM _init.php => line: 11
            $out .= "<img $l_load='{$img->url}' width='$w' height='$h' alt='$post->name'>";
            }
            $out .= "</a>\n";
        }
        return $out;
    }

  // TILED GALLERY => USAGE:
  // $gallery = pages()->get('/blog/')->children("limit=3, sort=random");
  // echo tiledGallery($gallery, $l_load);
  function tiledGallery($gallery, $l_load = 'data-src') {

      $out = '';

        if(count($gallery)) {

          $out .= "<div id='tiled-gallery' class='tiled-g'>";

               foreach($gallery as $child) {

                  if(count($child->images)) {

                       $out .= "<a class='grid-item' href='$child->url'>\n";
                       $out .= '<h3>' . $child->title . '</h3>';
                       // IMG LAZY LOAD ( $l_load ) FROM _init.php => line: 11
                       $out .= "<img $l_load='{$child->images->first->url}' alt='$child->name'>";
                       $out .= "</a>\n";
                  }

               }

          $out .= "</div>";

             } else {

               $out .= '<h4>Add Some Children!!! like ... $gallery = $pages()->get("/portfolio/")->children("limit=6")</h4>';

             }

             return $out;
}

// EDIT PAGE USAGE => echo editPage()
function editPage() {
    if(page()->editable) {
      $e_url = page()->editUrl;
      // Edit Me
      $e_p = "<br />";
      $e_p .= "<a class='btn-out' href='$e_url'><i class='fa fa-pencil' aria-hidden='true'></i> ";
      $e_p .= __('Edit Page');
      $e_p .= "</a>\n";
      return $e_p;
    }
  }

// PW DEBUG => USAGE => echo pwDebug()
function pwDebug() {
    if(config()->debug && user()->isSuperuser()) {
        // display region debugging info
        $out = "<div id='debug' class='debug-regions'>";
        $out .= "<!--PW-REGION-DEBUG-->";
        $out .= "</div>";
        return $out;
    }
}

// SIMPLE NAV => USAGE => echo topNav($homepage)
function topNav($homepage) {
    $p_url = page()->editUrl;
    $out = '';
    foreach($homepage->and($homepage->children) as $item) {
        if($item->id == page()->rootParent->id) {
        $class =  "current";
        } else {
        $class =  "default";
        }
        $out .= "<li>";
        $out .= "<a class='$class' href='$item->url'>$item->title</a></li>\n";
    }

    // output an "Edit" link if this page happens to be editable by the current user
    if(page()->editable()) $out .= "<li class='edit'><a href='$p_url'>Edit</a></li>\n";
    return $out;
}

// SOCIAL PROFILES ( twitter,facebook,youtube, google-plus, 'rss' ) => USAGE:
// echo socialProfiles($options->txtarea_1)
function socialProfiles($options) {

    if($options) {
      $profile = explode(",", $options);
      $soc = ['twitter','facebook','youtube','plus','pinterest','linkedin','tumblr','medium','instagram','rss','@'];
      $out = '';
// START LISTS
$out .= "<ul>\n";

foreach ($profile as $key) {

    for($i=0; $i<count($soc); $i++) {

        if (strpos(strtolower($key), $soc[$i]) !== false) {
            if($soc[$i] == 'rss') $key = pages()->get("/blog/")->httpUrl.'rss';
            if($soc[$i] == 'plus') $soc[$i] = 'google-plus';
            if($soc[$i] == '@') {
                $soc[$i] = 'envelope-open-o';
                $key = 'mailto:'.$key;
            }
                $out .= "\n\t<li>
                \n\t<a href='$key' target='_blank'>
                \n\t\t<i class='px-2 fa fa-$soc[$i] fa-2x' aria-hidden='true'></i>
                \n\t</a>
                \n\t</li>\n";
        }
    }

}
      $out .= "</ul>\n";
      return $out;

        } else {
            return '<h2>' . __('Add Some Social Profile Url') . '</h2>';
        }
}

// ADD TO ANY USAGE: echo toAny()
    function toAny() {
        return"<!-- AddToAny BEGIN -->
        <div class='a2a_kit a2a_kit_size_32 a2a_default_style'>
        <a class='a2a_dd' href='https://www.addtoany.com/share'></a>
        <a class='a2a_button_facebook'></a>
        <a class='a2a_button_twitter'></a>
        <a class='a2a_button_google_plus'></a>
        <a class='a2a_button_linkedin'></a>
        <a class='a2a_button_reddit'></a>
        <a class='a2a_button_email'></a>
        <a class='a2a_button_google_gmail'></a>
        </div>
        <script async src='https://static.addtoany.com/menu/page.js'></script>
        <!-- AddToAny END -->";
    }

// https://developers.google.com/analytics/devguides/collection/analyticsjs/
function gAnalitycs($code)
{
return"\n
<!-- Google Analytics -->
<script>
window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
ga('create', '$code', 'auto');
ga('send', 'pageview');
</script>
<script async src='https://www.google-analytics.com/analytics.js'></script>
<!-- End Google Analytics -->\n";
}

// CUSTOM CSS USAGE: echo customCSS()
function customCSS() {
    $url_gif = urls()->templates."all-assets/img/preload-1.gif";
     return"/*Simple Honey Pot In Contact Form */
    
    .hide-robot {
            display:none;
        }
    
    /* Preloader */
    body {
    overflow: hidden;
    }
    #preloader {
    position: fixed;
    top:0;
    left:0;
    right:0;
    bottom:0;
    background-color:#1e1d22; /* change if the mask should have another color then white */
    z-index:1999; /* makes sure it stays on top */
    }
    #status {
    width:200px;
    height:200px;
    position:absolute;
    left:50%; /* centers the loading animation horizontally one the screen */
    top:50%; /* centers the loading animation vertically one the screen */
    background-image:url($url_gif);
    background-repeat:no-repeat;
    background-position:center;
    margin:-100px 0 0 -100px; /* is width and height divided by two */
    }
    #cookie-bar {
        z-index: 1 !important;
    }
    \n";
    }
    
    // TRASH DEMO DATA => USAGE: trashDemoData($trash = true);
    function trashDemoData($trash = false) {
        // IF TRUE
        if($trash == true) {
            // GET ID ALL PAGES TO TRASH
            $arr_p = [
                '1389','1345','1361','1365','1355','1347','1351',
                '1353','1357','1304','1106','1155','1124','1159',
                '1165','1126','1169','1108','1128','1131','1171',
                '1167','1116','1135','1149','1157','1163','1383',
                '1384','1387','1388'
            ];
        
                foreach ($arr_p as $key) {
                    $trash_p = pages()->get($key);
                // IF PAGE EXSIST    
                    if($trash_p->name == true) {
                // PAGE TO TRASH      
                        pages()->trash($trash_p);
                    // OR DELETE
                        // pages()->delete($trash_p);
                    }
                }
            }   
        
        }