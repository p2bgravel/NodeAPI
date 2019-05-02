angular.module('api.apis', []).factory("dataService", _APIdataService)

function _APIdataService($q, $http, MYAPP) {
	class dataService {
		getById(id) {
			if (angular.isUndefined(id)) {
				return $q.reject(new TypeError("Invalid id for search."));
			}

			return $http.get(MYAPP.url + id)
				.then(successHandler, errorHandler)
				.catch(function (response) {
					console.error('GET error', response.status, response.data);
				})
				.finally(function () {});
		}

		get(url) {
			return $http.get(MYAPP.url + url)
				.then(successHandler, errorHandler)
				.catch(function (response) {
					console.error('GET error', response.status, response.data);
				})
				.finally(function () {});
		}

		save(res, data) {
			if (!angular.isObject(res) || !res.isValid()) {
				return $q.reject(new TypeError("Invalid to be created."));
			}

			return $http.post(MYAPP.url + res, JSON.stringify(data), MYAPP.headers)
				.then(successHandler, errorHandler)
				.catch(function (response) {
					console.error('GET error', response.status, response.data);
				})
				.finally(function () {});
		}

		del(id) {
			if (!angular.isString(id)) {
				return $q.reject(new TypeError("Invalid id for deletion."));
			}

			return $http.delete(MYAPP.url + id, MYAPP.headers)
				.then(successHandler, errorHandler)
				.catch(function (response) {
					console.error('GET error', response.status, response.data);
				})
				.finally(function () {});
		}

	}

	function successHandler(response) {
		return response
	}

	function errorHandler(response) {
		console.log('Error', response.data)
	}

	return new dataService();

}
