angular.module('app.config', []).config(_configApp)

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
