angular.module('main.controller', []).controller("MainController", _mainController)

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
