var gulp = require('gulp'),
    $    = require('gulp-load-plugins')(),
    webserver = require('gulp-webserver');

gulp.task('default', [], function() {
  gulp.src('.').pipe(webserver({
    livereload: true,
    directoryListing: true,
    open: true
  }));
});