(function () {
    var app;
    var app = angular.module('cmnSLEntityBrowserApp', ['entityFactory']);

    app.directive('slEntityBrowser', ['$timeout', 'entityFactory', function ($timeout, entityFactory) {
        return {
            scope : {
                btnLabel : '@',
                handler: '&'
            },
            restrict: 'AE',
            templateUrl: '/common/sl-entity-browser',
            link: function (scope, elem, attrs) {

                elem.bind('click', function () {
                    if (angular.isDefined(scope.slEntities) && scope.slEntities.length > 0)  return; // cache

                    scope.$apply(function () {
                        entityFactory.getEntities().success(function (data) {
                            scope.slEntities = data;
                        });
                    });
                });

                // expose selected account to the outside world :)
                scope.selectEntity = function(entity) {
                    return $timeout(function() {
                        return scope.handler({
                            entity: entity
                        });
                    });
                }
            }
        };
    }]);
}).call(this);
