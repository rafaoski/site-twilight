# Page Profile For [Processwire 3x](https://processwire.com/) with using functions like:
### [MarkupRegions](https://processwire.com/blog/posts/processwire-3.0.49-introduces-a-new-template-file-strategy/)
### [FunctionsAPI](https://processwire.com/blog/posts/processwire-3.0.39-core-updates/)  

### Added Packages:
[Font Awesome](http://fontawesome.io/)  
[gridlex](http://gridlex.devlint.fr/)  
[Headroom.js](http://wicky.nillia.ms/headroom.js/)  
[metisMenu](https://github.com/onokumus/metismenu)  
[vanilla-lazyload](https://github.com/verlok/lazyload)  
[jquery](https://jquery.com/)  

### Installed Modules:
[TracyDebugger](http://modules.processwire.com/modules/tracy-debugger/)  
[MarkupSitemap](https://modules.processwire.com/modules/markup-sitemap/)  

MODULES CORE =>  Comments, Forgot Password, RSS, Repeater,

#### If you want to use GULP STACK you must install these packages on your system:
[Node.js](https://nodejs.org/en/)  
[GULP](https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md)  
[BOWER](https://bower.io/)  

#### Now go to folder with all template files and install Important Dependencies
npm install  
bower install  

#### Go to gulpfile.js and change in line 15 -- var URL: "http://site-twilight.dev/" To your local processwire-installation -- like:
localhost/my-local-folder-processwire-installation/

#### Before Using Gulp
You Must Go to Options Page and Enable it in Select From Enable OR Disable Options and Enable Gulp Watch 

#### Now Use This Command to Copy important Dependencies:
gulp start

#### Now Use This Command to Watch all changes:
gulp watch

#### Folder With all SCSS file is inside templates/all-assets/scss

#### To Minify CSS Use This Command:
gulp finish