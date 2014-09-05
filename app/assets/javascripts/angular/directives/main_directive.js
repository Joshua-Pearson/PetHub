(function() {

  var app = angular.module("app-welcome-page", []);

  app.directive("welcome-page", function() {
    return {
      restrict: "E",
      templateUrl: "assets/javascripts/partials/welcome-page.html",
      controller: function() {
        this.hi = function() {
          return "HI HI HI HI  HI"
        };
      },
      controllerAs: "welcome"
    };
  });
})();