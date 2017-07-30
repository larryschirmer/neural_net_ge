var app = angular.module("myModule");

  app.controller("homeController", function($scope){

        var myRequest = new Request('https://api.schr.me/communitychange/temphume1Obj');
        var time;
        var humidity;

        $scope.humidity = "40%";
        $scope.time = "70 F"

        fetch(myRequest)
            .then(function(response) {
                return response.json();
            })
            .then(function(data) {
                let dataset = data.slice(0, 1);
                time = dataset[0].temp;
                humidity = dataset[0].hume;
          });

          console.log(humidity);

})
