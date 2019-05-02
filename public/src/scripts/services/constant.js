angular.module('api.constant', [])
	.constant("MYAPP", {
		url: "http://localhost:1337",
		appVersion: 1.0,
		headers: { 
			'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;',
			// 'Authorization': 'Bearer ' + 'TOKEN_HERE'
		}
	})
