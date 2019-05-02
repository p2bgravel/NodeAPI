module.exports = function (gulp, $, browserSync) {
	gulp.task('html-min', function () {
		return gulp.src([
				'./public_html/*.html',
			])
			.pipe($.htmlmin({collapseWhitespace: true}))
			.pipe(gulp.dest('./public_html'))
	});
};
