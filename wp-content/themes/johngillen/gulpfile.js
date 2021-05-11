var postcss = require('gulp-postcss'),
    gulp = require('gulp'),
    jshint = require('gulp-jshint'),
    uglify = require('gulp-uglify'),
    concat = require('gulp-concat'),
    sass = require('gulp-dart-sass'),
    cssImport = require('gulp-cssimport'),
    autoprefixer = require('autoprefixer'),
    watch = require('gulp');

function js() {
    return gulp.src('./app/js/app.js')
    .pipe(jshint())
    .pipe(jshint.reporter('default'))
    // .pipe(uglify())
    .pipe(gulp.dest('./dist/js/'))
}

function css() {
    return gulp.src('./app/scss/styles.scss')
    .pipe(sass({
        style: 'compact',
        sourcemap: true
    }).on('error', sass.logError))
    .pipe(cssImport()) // Run all imports.
    .pipe(gulp.dest('./dist/css/'));
}

gulp.task('default', ['css'], function() {
    gulp.watch('./assets/src/scss/**/*.scss', function() {
        gulp.run('css');
    });
})

gulp.task('js', function() {
    return js();
});


gulp.task('css', function() {
    return css();
});