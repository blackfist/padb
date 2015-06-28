angular.module('addUrls', [])
.controller('urlController', function($scope) {
  $scope.urls= [{id:'url1'}];

  $scope.addNewUrl = function() {
    var newItemNo = $scope.urls.length + 1;
    $scope.urls.push({id:'url'+newItemNo});
  };

  $scope.showAddUrl = function(url) {
    return url.id === $scope.urls[$scope.urls.length-1].id;
  };

})
