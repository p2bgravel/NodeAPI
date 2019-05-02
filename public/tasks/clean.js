module.exports = function (gulp, $, browserSync) {
	gulp.task('clean', function () {
		let del = require('del');
		return del([
			'./public_html/**/*',
			'!./public_html/uploads',
		], {force:true})
	});
};
