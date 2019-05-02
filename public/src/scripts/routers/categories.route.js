angular.module('categories.router', []).config(_categoriesRoute)

function _categoriesRoute($stateProvider, $urlRouterProvider) {
	$stateProvider
		.state('categories', {
			url: '/categories',
			data : { 
				pageTitle: 'Categories' 
			},
			views: {
				"@": {
					controller: 'CategoriesController',
					templateUrl: '/views/categories.html',
				},
				"menu@": {
					controller: 'MenuController',
					templateUrl: '/views/menu.html'
				}
			}
		});
}
