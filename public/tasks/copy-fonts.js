module.exports = function (gulp, $, browserSync) {
	gulp.task('copy-fonts', function () {
		return gulp.src([
				'./src/webfonts/**.*',
			])
			.pipe(gulp.dest('./public_html/webfonts'));
	});
};
