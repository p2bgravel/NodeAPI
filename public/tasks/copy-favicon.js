module.exports = function (gulp, $, browserSync) {
	gulp.task('copy-favicon', function () {
		return gulp.src([
				'./src/favicon/**.*',
			])
			.pipe(gulp.dest('./public_html/favicon'));
	});
};
