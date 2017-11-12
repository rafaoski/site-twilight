var gulp = require('gulp')
var browserSync = require('browser-sync').create()

var concat = require('gulp-concat')
var rename = require('gulp-rename')
var uglify = require('gulp-uglify')

var sass = require('gulp-sass')
var autoprefixer = require('gulp-autoprefixer')
var sourcemaps = require('gulp-sourcemaps')
var clean = require('gulp-clean')

// Enter URL of your local server here
// Example: 'localhost/processwire-folder/'
var URL = 'http://site-twilight.dev/';

// Compile sass into CSS & auto-inject into browsers
gulp.task('sass', function () {
  return gulp.src('all-assets/scss/*.scss')

    .pipe(sourcemaps.init())

    .pipe(sass({
      outputStyle: 'nested' // nested,compact,expanded,compressed
    }).on('error', sass.logError))

    // .pipe(autoprefixer({
    //   // browsers: ['last 2 versions', 'ie >= 9', 'Android >= 2.3', 'Firefox >= 14']
    //   // browsers: ['last 2 versions'],
    //   // cascade: false
    // }))

    .pipe(sourcemaps.write('.'))

    .pipe(gulp.dest('all-assets/css'))
    .pipe(browserSync.stream());
    // .pipe(browserSync.stream({match: '**/*.css'}));
})

// Compress SCSS File
gulp.task('minify-css', function () {
  return gulp.src('all-assets/scss/*.scss')

    .pipe(sass({
      outputStyle: 'compressed' // nested,compact,expanded,compressed
    }).on('error', sass.logError))

    // .pipe(autoprefixer({
    //   // browsers: ['last 2 versions', 'ie >= 9', 'Android >= 2.3', 'Firefox >= 14']
    //   // browsers: ['last 2 versions'],
    //   // cascade: false
    // }))

    .pipe(concat('master.min.css'))
    .pipe(gulp.dest('all-assets/css'))
})

// CLEAN JS FILE
gulp.task('clean-js', function () {
  return gulp.src([
    './all-assets/js/master.min.js'
  ], {
    force: true
  })
    .pipe(clean())
})

// ALL JS FILE TO ONE master.min.js
gulp.task('js', ['clean-js'], function () {
  return gulp.src([
    './all-assets/js/jquery.min.js',
    './all-assets/js/metisMenu.min.js',
    './all-assets/js/lazyload.min.js',
    './all-assets/js/jquery.cookiebar.js',
    './all-assets/js/index.js',
    // './all-assets/js/custom/**/*.js'
  ])

  .pipe(concat('master.min.js'))
  .pipe(uglify())
  .pipe(gulp.dest('./all-assets/js/'))

})

gulp.task('js-watch', ['js'], function (done) {
  browserSync.reload();
  done();
});

// GULP TASK (start or build)
gulp.task('copy-fonts', function () {
  gulp.src('./bower_components/font-awesome/fonts/**/*')
    .pipe(gulp.dest('./all-assets/fonts'))
})

gulp.task('copy-css', function() {
    gulp.src([
            './bower_components/font-awesome/css/font-awesome.min.css'
        ])
        .pipe(gulp.dest('./all-assets/css'));
});

gulp.task('copy-js', function() {
  gulp.src([
          // './bower_components/jquery/dist/jquery.min.js',
          './bower_components/vanilla-lazyload/dist/lazyload.min.js',
          './bower_components/cookieconsent/build/cookieconsent.min.js'

      ])
      .pipe(gulp.dest('./all-assets/js'));
});

// Static Server + watching scss/php files
gulp.task('serve', ['sass', 'js'], function () {
  browserSync.init({
    // proxy: 'localhost/processwire-folder/',
    proxy: URL,
    notify: false,
    browser: 'chrome',
    // browser: "firefox",

    // WATCH PHP FILES
    files: ["**/*.php"],
  })

  // WATCH SASS
  gulp.watch("all-assets/scss/**/*.scss", ['sass']);
  // WATCH JS
  gulp.watch("all-assets/js/custom/*.js", ['js-watch']);

})

// Copy All Dependencies
gulp.task('start', ['copy-fonts','copy-css','copy-js'])

// Watch For changes
gulp.task('watch', ['start','serve'])

// Finish  And Copy All Dependencies
gulp.task('finish', ['copy-fonts','copy-css','js','minify-css'])
