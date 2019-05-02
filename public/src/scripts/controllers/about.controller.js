angular.module('about.controller', []).controller("AboutController", _aboutController)

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
		},
		{
			id: 20,
			name: "20"
		},
		{
			id: 24,
			name: "24"
		},
		{
			id: 40,
			name: "40"
		},
		{
			id: 48,
			name: "48"
		}
	];
	$scope.viewby = $scope.select[0];
	$scope.setPage = function (pageNo) {
		$scope.currentPage = pageNo;
	};
	$scope.pageChanged = function () {
		$scope.lists = $scope.data.slice(
			($scope.currentPage - 1) * $scope.itemsPerPage,
			$scope.currentPage * $scope.itemsPerPage
		);
	};
	$scope.setItemsPerPage = function (num) {
		$scope.itemsPerPage = num.id;
		$scope.currentPage = 1;
		$scope.lists = $scope.data.slice(
			($scope.currentPage - 1) * $scope.itemsPerPage,
			$scope.currentPage * $scope.itemsPerPage
		);
	};
	// Phân trang

	$http({
		method: 'GET', // POST, PUT, DELETE
		url: 'https://www.w3schools.com/angular/customers.php',
	}).then(function (response) {
		$scope.data = eval(response.data.records);

		// Phân trang
		$scope.totalItems = response.data.records.length;
		$scope.lists = $scope.data.slice(
			($scope.currentPage - 1) * $scope.itemsPerPage,
			$scope.currentPage * $scope.itemsPerPage
		);
		// Phân trang

	}, function (error) {
		console.log('Lỗi 003 - About: ' + error);
	});
}
