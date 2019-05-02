angular.module('menu.controller', []).controller("MenuController", _menuController)

function _menuController($scope, dataService) {
	dataService.get('/categories').then(
		function (response) {
			$scope.data = response.data
		}
	);
}
