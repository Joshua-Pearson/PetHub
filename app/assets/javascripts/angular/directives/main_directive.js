(function() {

  var app = angular.module("app-welcome-page", []);

  app.directive("welcomePage", function() {
    return {
      restrict: "E",
      templateUrl: "assets/javascripts/angular/partials/welcome-page.html",
      controller: function() {
        
        this.hi = function() {
          return "HI HI HI HI  HI"
        };
      },
      controllerAs: "welcome"
    };
  });
})();