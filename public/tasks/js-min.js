module.exports = function (gulp, $, browserSync) {
	let strip = require('gulp-strip-comments');
	gulp.task('js-min', function () {
		return gulp.src([
				'./public_html/js/*.js',
			])
			.pipe($.uglify())
			.pipe(strip())
			.pipe($.rename({
                suffix: '.min'
            }))
			.pipe(gulp.dest('./public_html/js'));
	});
};
