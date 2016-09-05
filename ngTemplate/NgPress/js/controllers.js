angular.module('NgPress')

.controller('MainCtrl', ['$q', '$scope', '$http', '$routeParams', '$location', 'dataServiceWordpress', 'dataServiceWooCommerce', function($q, $scope, $http, $routeParams, $location, dataServiceWordpress, dataServiceWooCommerce){
    console.log('|                                                                                                                                                     |');
    console.log('| * ----- Chargement du CTRL Principal ngPress : ----- *                                                                                              |');
    console.log('| --> MainCtrl --> LOAD                                                                                                                               |');

    dataServiceWordpress.getDataWordpress()
    .then(function (resultWp) {
        console.log('| --> MainCtrl Function="resultWp" --> LOAD                                                                           |');
        /* Data Wordpress */
        $scope.posts = resultWp.posts;
        $scope.medias = resultWp.medias;
        $scope.categories = resultWp.categories;
        $scope.comments = resultWp.comments;
        $scope.users = resultWp.users;
        $scope.tags = resultWp.tags;
        $scope.statuses = resultWp.statuses;
        $scope.pages = resultWp.pages;
        $scope.mainInfo = resultWp.mainInfo;
    // FilterData
        $scope.getMedia = function (id) {
            return resultWp.getMedia(id);
        }

        $scope.FilteredPosts = function (typeCategorie, typeSubCategorie) {
            return resultWp.FilteredPosts(typeCategorie, typeSubCategorie);
        };

        $scope.FilteredComments = function (type) {
            return resultWp.FilteredComments(type);
        };
        
    })
    .catch(function (error) {
        console.log('| !!! Error DataWorpress CTRL !!!')
    });

    dataServiceWooCommerce.getDataWooCommerce()
    .then(function (resultWc){
        console.log('| --> MainCtrl Function="resultWc" --> LOAD                                                                                                           |');
        console.log('|                                                                                                                                                     |');
        console.log('|---------------------------------------------------------* Powered by Al3x © 2016 *------------------------------------------------------------------|');
        /* Data WooCommerce */
        $scope.coupons = resultWc.urlCoupons;
        $scope.customers = resultWc.urlCustomers;
        $scope.orders = resultWc.urlOrders;
        $scope.products = resultWc.urlProducts;
        $scope.reports = resultWc.urlReports;
        $scope.webhooks = resultWc.urlWebhooks;
        $scope.shop = resultWc.urlShop;
    // FilterData
        $scope.getMedia = function (id) {
            return resultWp.getMedia(id);
        }

        $scope.FilteredProducts = function (typeCategorie, typeSubCategorie) {
            return resultWc.FilteredProducts(typeCategorie, typeSubCategorie);
        };

        $scope.FilteredOrders = function (type) {
            return resultWc.FilteredOrders(type);
        };
    })
    .catch(function (error){
        console.log('| !!! Error DataWooCommerce CTRL !!!')
    })


}])

// FilterGlobal
.filter('htmlToPlaintext', function() {
    return function(text) {
      return  text ? String(text).replace(/<[^>]+>/gm, '') : '';
    };
  })

  .filter('strLimit', ['$filter', function($filter){
        return function(input, limit){
            if (! input) return;
            if (input.length <= limit){
                return input;
        }return $filter('limitTo')(input, limit) + '...';
   };
}])
