module.exports = function (gulp, $, browserSync) {
	gulp.task('watch', function () {
		gulp.watch('./src/styles/**/*.sass', ['tao-sass']);
		gulp.watch('./src/img/**/*.*', ['copy-img']);
		gulp.watch('./src/db/**/*.*', ['copy-db']);
		gulp.watch('./src/templates/**/*.pug', ['tao-html']);
		gulp.watch('./src/scripts/**/*.js', ['tao-js']);
		gulp.watch("./public_html/**/*.*").on('change', browserSync.reload);
	});
};
