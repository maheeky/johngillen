import gulp from 'gulp';
import yargs from 'yargs';
import sass from 'gulp-dart-sass';
import browserSync from 'browser-sync';
import cleanCss from 'gulp-clean-css';
import autoprefixer from 'autoprefixer';
import postcss from 'gulp-postcss';
import sourcemaps from 'gulp-sourcemaps';
import cssImport from 'gulp-cssimport';
import gulpif from 'gulp-if';
import del from 'del';
import webpack from 'webpack-stream';

const PROD = yargs.argv.prod;
const server = browserSync.create();

const paths = {
    styles : {
        src: ['app/scss/styles.scss'],
        dest: 'dist/css'
    },
    scripts: {
        src: ['app/js/app.js'],
        dest: 'dist/js',
    },
    modules : {
        src: ['./node_modules'],
    }
}

/**
 * Build local server on localhost
 * @param {Function} cb - callback
 */
export const serve = (cb) => {
    server.init({
        proxy: "http://johngillen.local"
    });
    cb();
}

export const reload = (cb) => {
    server.reload();
    cb();
}
/**
 * Watch all files for changes, compile and run.
 */
export const watch = () => {
    gulp.watch('app/js/*.js', gulp.series(scripts, reload));
    gulp.watch('app/scss/**/*.scss', {usePolling: true}, styles);
    gulp.watch('**/*.php', reload);
}

export const styles = () => {
    return gulp.src(paths.styles.src)
            .pipe(cssImport()) // Run all imports.
            .pipe(gulpif(!PROD, sourcemaps.init()))
            .pipe(sass({
                style: 'compact',
                sourcemap: true,
                includePaths: [paths.modules.src],
            }).on('error', sass.logError))
            .pipe(gulpif(PROD, postcss([autoprefixer])) )
            .pipe(gulpif(PROD, cleanCss({compatibility:'ie8'})) )
            .pipe(gulpif(!PROD, sourcemaps.write('.')))
            .pipe(gulp.dest(paths.styles.dest));
}

export const scripts = () => {
    return gulp.src(paths.scripts.src)
        .pipe(webpack({
            module: {
                rules: [
                    {
                        test: /\.js$/,
                        use: {
                            loader: 'babel-loader',
                            options: {
                                presets:[]
                            }
                        }
                    },
                    {
                        test: /\.css$/i,
                        use: [
                            "css-loader",
                        ],
                    }
                ]
            },
            mode: PROD ? 'production' : 'development',
            devtool: !PROD ? 'inline-source-maps' : false,
            output: {
                filename: 'app.js'
            },
        }))
        .pipe(gulp.dest(paths.scripts.dest));
}

export const wipe = () => {
    return del(['dist']);
}

export const dev = gulp.series(wipe, gulp.parallel(styles, scripts), watch);
export const build = gulp.series(wipe, gulp.parallel(styles, scripts));
