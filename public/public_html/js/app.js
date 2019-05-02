'use strict';

_configApp.$inject = ["$logProvider", "$locationProvider", "$compileProvider"];
_runApp.$inject = ["$rootScope", "$state", "$stateParams", "$location"];
_aboutController.$inject = ["$scope", "$http"];
_categoriesController.$inject = ["$scope", "dataService"];
_homeController.$inject = ["$scope"];
_mainController.$inject = ["$scope", "$http"];
_menuController.$inject = ["$scope", "dataService"];
_htmlFormat.$inject = ["$sce"];
_aboutRoute.$inject = ["$stateProvider", "$urlRouterProvider"];
_categoriesRoute.$inject = ["$stateProvider", "$urlRouterProvider"];
_homeRoute.$inject = ["$stateProvider", "$urlRouterProvider", "$urlMatcherFactoryProvider"];
_APIdataService.$inject = ["$q", "$http", "MYAPP"];
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var app = angular.module('p2bGravelApp', ['ngAnimate', 'ngSanitize',
// Thư viện
// 'toastr',
'ui.router', 'ui.bootstrap',
// App |  Hệ thống
'app.services', 'app.config', 'app.run', 'app.routers',
// App | Tùy chỉnh
'app.filters', 'app.controllers', 'app.directives']);

angular.module('app.config', []).config(_configApp);

function _configApp($logProvider, $locationProvider, $compileProvider) {
	// Ghi log
	$logProvider.debugEnabled(true);
	// Cấu hình hotlink
	$compileProvider.aHrefSanitizationWhitelist(/^\s*(https?|ftp|mailto|file|javascript):/);
	$locationProvider.html5Mode({
		enabled: false,
		requireBase: false
	}).hashPrefix('!');
}

angular.module('app.run', []).run(_runApp);

function _runApp($rootScope, $state, $stateParams, $location) {
	var path = $location.path();
	console.log('Đã hoàn thành chạy ứng dụng! - ' + path);
	$rootScope.$state = $state;
	$rootScope.$stateParams = $stateParams;
	// $rootScope.$on('$stateChangeStart', function (event, toState) {
	// 	console.log('Bắt đầu thay đổi');
	// 	console.log(toState);
	// });
	// $rootScope.$on('$locationChangeSuccess', function (e) {
	// 	console.log('Di chuyển route hoàn chỉnh');
	// });
	// $rootScope.$on('$stateChangeSuccess', function (event, toState, toParams, fromState, fromParams) {
	// 	console.log('Thay đổi hoàn thành');
	// 	console.log(event);
	// 	console.log(toState);
	// });
}

angular.module('about.controller', []).controller("AboutController", _aboutController);

function _aboutController($scope, $http) {

	// Phân trang
	$scope.lists = [];
	$scope.viewby = 12; // Default 12
	$scope.currentPage = 1;
	$scope.itemsPerPage = $scope.viewby;
	$scope.maxSize = 3;
	$scope.select = [{
		id: 12,
		name: "12"
	}, {
		id: 20,
		name: "20"
	}, {
		id: 24,
		name: "24"
	}, {
		id: 40,
		name: "40"
	}, {
		id: 48,
		name: "48"
	}];
	$scope.viewby = $scope.select[0];
	$scope.setPage = function (pageNo) {
		$scope.currentPage = pageNo;
	};
	$scope.pageChanged = function () {
		$scope.lists = $scope.data.slice(($scope.currentPage - 1) * $scope.itemsPerPage, $scope.currentPage * $scope.itemsPerPage);
	};
	$scope.setItemsPerPage = function (num) {
		$scope.itemsPerPage = num.id;
		$scope.currentPage = 1;
		$scope.lists = $scope.data.slice(($scope.currentPage - 1) * $scope.itemsPerPage, $scope.currentPage * $scope.itemsPerPage);
	};
	// Phân trang

	$http({
		method: 'GET', // POST, PUT, DELETE
		url: 'https://www.w3schools.com/angular/customers.php'
	}).then(function (response) {
		$scope.data = eval(response.data.records);

		// Phân trang
		$scope.totalItems = response.data.records.length;
		$scope.lists = $scope.data.slice(($scope.currentPage - 1) * $scope.itemsPerPage, $scope.currentPage * $scope.itemsPerPage);
		// Phân trang
	}, function (error) {
		console.log('Lỗi 003 - About: ' + error);
	});
}

angular.module('categories.controller', []).controller("CategoriesController", _categoriesController);

function _categoriesController($scope, dataService) {
	// Phân trang
	$scope.lists = [];
	$scope.viewby = 12; // Default 12
	$scope.currentPage = 1;
	$scope.itemsPerPage = $scope.viewby;
	$scope.maxSize = 3;
	$scope.select = [{
		id: 12,
		name: "12"
	}, {
		id: 20,
		name: "20"
	}, {
		id: 24,
		name: "24"
	}, {
		id: 40,
		name: "40"
	}, {
		id: 48,
		name: "48"
	}];
	$scope.viewby = $scope.select[0];
	$scope.setPage = function (pageNo) {
		$scope.currentPage = pageNo;
	};
	$scope.pageChanged = function () {
		$scope.lists = $scope.data.slice(($scope.currentPage - 1) * $scope.itemsPerPage, $scope.currentPage * $scope.itemsPerPage);
	};
	$scope.setItemsPerPage = function (num) {
		$scope.itemsPerPage = num.id;
		$scope.currentPage = 1;
		$scope.lists = $scope.data.slice(($scope.currentPage - 1) * $scope.itemsPerPage, $scope.currentPage * $scope.itemsPerPage);
	};
	// Phân trang

	dataService.get('/categories').then(function (response) {
		$scope.data = eval(response.data);

		// Phân trang
		$scope.totalItems = response.data.length;
		$scope.lists = $scope.data.slice(($scope.currentPage - 1) * $scope.itemsPerPage, $scope.currentPage * $scope.itemsPerPage);
	});
}

angular.module('app.controllers', ['main.controller', 'menu.controller', 'home.controller', 'about.controller', 'categories.controller']);

angular.module('home.controller', []).controller("HomeController", _homeController);

function _homeController($scope) {
	$scope.demo = 'AAAAAA';
}

angular.module('main.controller', []).controller("MainController", _mainController);

function _mainController($scope, $http) {
	$http({
		method: 'GET',
		url: '/db/main.json'
	}).then(function (response) {
		$scope.settings = eval(response.data.settings);
	}, function (error) {
		console.log('Lỗi 000 - Main: ' + error);
	});
}

angular.module('menu.controller', []).controller("MenuController", _menuController);

function _menuController($scope, dataService) {
	dataService.get('/categories').then(function (response) {
		$scope.data = response.data;
	});
}

angular.module('click.directive', []).directive("myClick", _myClick);

function _myClick() {
	return {
		// restrict: 'EA', //E = element, A = attribute, C = class, M = comment         
		// scope: {
		// 	//@ reads the attribute value, = provides two-way binding, & works with functions
		// 	title: '@'
		// },
		// template: '<div>{{ myVal }}</div>',
		// templateUrl: 'mytemplate.html',
		// controller: controllerFunction, //Embed a custom controller in the directive
		link: function link($scope, element, attrs) {
			element.bind('click', function () {
				element.html('You clicked me!');
			});
			element.bind('mouseenter', function () {
				element.css('background-color', 'yellow');
			});
			element.bind('mouseleave', function () {
				element.css('background-color', 'white');
			});
		}
	};
}

angular.module('app.directives', ['click.directive', 'enter.directive']);

angular.module('enter.directive', []).directive("ngEnter", _myEnter);

function _myEnter() {
	return function (scope, element, attrs) {
		element.bind("keydown keypress", function (event) {
			if (event.which === 13) {
				scope.$apply(function () {
					scope.$eval(attrs.ngEnter, { 'event': event });
				});
				event.preventDefault();
			}
		});
	};
}

angular.module('app.filters', ['html.filter']);

angular.module('html.filter', []).filter("html", _htmlFormat);

function _htmlFormat($sce) {
	return function (val) {
		return $sce.trustAsHtml(val);
	};
}

angular.module('about.router', []).config(_aboutRoute);

function _aboutRoute($stateProvider, $urlRouterProvider) {
	$stateProvider.state('about', {
		url: '/about/:id',
		data: {
			pageTitle: 'Về chúng tôi'
		},
		views: {
			"@": {
				controller: 'AboutController',
				templateUrl: '/views/about.html'
			},
			"menu@": {
				controller: 'MenuController',
				templateUrl: '/views/menu.html'
			}
		}
	});
}

angular.module('categories.router', []).config(_categoriesRoute);

function _categoriesRoute($stateProvider, $urlRouterProvider) {
	$stateProvider.state('categories', {
		url: '/categories',
		data: {
			pageTitle: 'Categories'
		},
		views: {
			"@": {
				controller: 'CategoriesController',
				templateUrl: '/views/categories.html'
			},
			"menu@": {
				controller: 'MenuController',
				templateUrl: '/views/menu.html'
			}
		}
	});
}

angular.module('home.router', []).config(_homeRoute);

function _homeRoute($stateProvider, $urlRouterProvider, $urlMatcherFactoryProvider) {
	$stateProvider.state('home', {
		url: '/',
		data: {
			pageTitle: 'Trang chủ'
		},
		views: {
			"@": {
				controller: 'HomeController',
				templateUrl: '/views/home.html'
			},
			"menu@": {
				controller: 'MenuController',
				templateUrl: '/views/menu.html'
			}
		}
	});
	$urlRouterProvider.otherwise('/');
	$urlMatcherFactoryProvider.caseInsensitive(true);
}

angular.module('app.routers', ['home.router', 'about.router', 'categories.router']);

angular.module('api.apis', []).factory("dataService", _APIdataService);

function _APIdataService($q, $http, MYAPP) {
	var dataService = function () {
		function dataService() {
			_classCallCheck(this, dataService);
		}

		_createClass(dataService, [{
			key: 'getById',
			value: function getById(id) {
				if (angular.isUndefined(id)) {
					return $q.reject(new TypeError("Invalid id for search."));
				}

				return $http.get(MYAPP.url + id).then(successHandler, errorHandler).catch(function (response) {
					console.error('GET error', response.status, response.data);
				}).finally(function () {});
			}
		}, {
			key: 'get',
			value: function get(url) {
				return $http.get(MYAPP.url + url).then(successHandler, errorHandler).catch(function (response) {
					console.error('GET error', response.status, response.data);
				}).finally(function () {});
			}
		}, {
			key: 'save',
			value: function save(res, data) {
				if (!angular.isObject(res) || !res.isValid()) {
					return $q.reject(new TypeError("Invalid to be created."));
				}

				return $http.post(MYAPP.url + res, JSON.stringify(data), MYAPP.headers).then(successHandler, errorHandler).catch(function (response) {
					console.error('GET error', response.status, response.data);
				}).finally(function () {});
			}
		}, {
			key: 'del',
			value: function del(id) {
				if (!angular.isString(id)) {
					return $q.reject(new TypeError("Invalid id for deletion."));
				}

				return $http.delete(MYAPP.url + id, MYAPP.headers).then(successHandler, errorHandler).catch(function (response) {
					console.error('GET error', response.status, response.data);
				}).finally(function () {});
			}
		}]);

		return dataService;
	}();

	function successHandler(response) {
		return response;
	}

	function errorHandler(response) {
		console.log('Error', response.data);
	}

	return new dataService();
}

angular.module('api.constant', []).constant("MYAPP", {
	url: "http://localhost:1337",
	appVersion: 1.0,
	headers: {
		'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
		// 'Authorization': 'Bearer ' + 'TOKEN_HERE'
	}
});

angular.module('app.services', ['api.apis', 'api.constant']);
//# sourceMappingURL=app.js.map
