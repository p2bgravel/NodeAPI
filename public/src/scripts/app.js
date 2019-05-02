var app = angular.module('p2bGravelApp', [
	'ngAnimate',
	'ngSanitize',
	// Thư viện
	// 'toastr',
	'ui.router',
	'ui.bootstrap',
	// App |  Hệ thống
	'app.services',
	'app.config',
	'app.run',
	'app.routers',
	// App | Tùy chỉnh
	'app.filters',
	'app.controllers',
	'app.directives',
]);
