angular.module('NgPress')

    .service('dataServiceWordpress', function($http, $q) {
        console.log('| --> ServiceWordpress method="GET" --> LOAD.                                                                                                         |');
        return {
            getDataWordpress: function($scope) {
                /* Datas Wordpress */
                var urlPosts = 'wp-json/wp/v2/posts?filter[orderby]=date&order=asc';
                var urlMedias = 'wp-json/wp/v2/media';
                var urlCategories = 'wp-json/wp/v2/categories';
                var urlComments = 'wp-json/wp/v2/comments?filter[orderby]=date&order=asc';
                var urlUsers = 'wp-json/wp/v2/users';
                var urlTags = 'wp-json/wp/v2/tags';
                var urlStatuses = 'wp-json/wp/v2/statuses';
                var urlPages = 'wp-json/wp/v2/pages';
                var mainInfo = 'wp-json/';
                return $q.all([
                    $http.get(urlPosts),
                    $http.get(urlMedias),
                    $http.get(urlCategories),
                    $http.get(urlComments),
                    $http.get(urlUsers),
                    $http.get(urlTags),
                    $http.get(urlStatuses),
                    $http.get(urlPages),
                    $http.get(mainInfo),
                ])
                .then(function (resultsWp) {
                    var resultWp = {};
                    console.log('|                                                                                                                                                     |');
                    console.log('| * ----- Chargement des Datas Wordpress : ----- *                                                                                                    |');
                    console.log('*_--WpData--_* (9 Objects): "0 = Posts ; 1 = Medias ; 2 = Categories ; 3 = Comments ; 4 = Users ; 5 = Tags ; 6 = Statuses ; 7 = Pages ; 8 = MainInfo" |');
                    console.log(resultsWp);
                    var resultWp = {
                        posts: resultsWp[0].data,
                        medias: resultsWp[1].data,
                        categories: resultsWp[2].data,
                        comments: resultsWp[3].data,
                        users: resultsWp[4].data,
                        tags: resultsWp[5].data,
                        statuses: resultsWp[6].data,
                        pages: resultsWp[7].data,
                        mainInfo: resultsWp[8].data,
                        getMedia: function (id) {
                            for(var i = 0; i < resultWp.medias.length; i ++) {
                                if (resultWp.medias[i].id == id) return resultWp.medias[i];
                            }
                        },
                        FilteredPosts: function (typeCategorie, typeSubCategorie) {
                            var articlesCategories = [];
                            var articlesSubCategories = [];

                            for (var i = 0; i < resultWp.categories.length; i++) {
                                if (resultWp.categories[i].slug == typeCategorie) {
                                    articlesCategories.push(resultWp.categories[i].id);
                                }
                                if (resultWp.categories[i].slug == typeSubCategorie) {
                                    articlesSubCategories.push(resultWp.categories[i].id);
                                }
                            }


                            function categorie(categoryId) {
                                return articlesCategories.indexOf(categoryId) >= 0;
                            }
                            function subCategorie(categoryId) {
                                return articlesSubCategories.indexOf(categoryId) >= 0;
                            }

                            var postsToDisplayCat = [];
                            for (var i = 0; i < resultWp.posts.length; i++) {
                                var post = resultWp.posts[i];
                                for (var j = 0; j < post.categories.length; j++) {
                                    if (categorie(post.categories[j])) {
                                        postsToDisplayCat.push(post);
                                        continue;
                                    }
                                }
                            }
                            var postsToDisplaySubCat = [];
                            for (var i = 0; i < resultWp.posts.length; i++) {
                                var post = resultWp.posts[i];
                                for (var j = 0; j < post.categories.length; j++) {
                                    if (subCategorie(post.categories[j])) {
                                        postsToDisplaySubCat.push(post);
                                        continue;
                                    }
                                }
                            }
                            return postsToDisplayCat, postsToDisplaySubCat;
                        },
                        FilteredComments: function (type) {
                            var articlesCategories = [];

                            for (var i = 0; i < resultWp.categories.length; i++) {
                                if (resultWp.categories[i].slug == type) {
                                    articlesCategories.push(resultWp.categories[i].id);
                                }
                            }

                            function isItAnArticle(categoryId) {
                                return articlesCategories.indexOf(categoryId) >= 0;
                            }

                            var postsToDisplay = [];
                            for (var i = 0; i < resultWp.posts.length; i++) {
                                var post = resultWp.posts[i];
                                for (var j = 0; j < post.categories.length; j++) {
                                    if (isItAnArticle(post.categories[j])) {
                                        postsToDisplay.push(post);
                                        continue;
                                    }
                                }
                            }
                            return postsToDisplay;
                        }
                    };
                    return resultWp;
                })
                .catch(function (error) {
                    console.log('| !!! Error ResultsWp DATA Services !!!')
                });
            }
        }
    })
    .service('dataServiceWooCommerce', function($http, $q){
        console.log('| --> ServiceWooCommerce method="GET" --> LOAD.                                                                                                       |');
        return {
            getDataWooCommerce: function($scope) {
                /* Datas WooCommerce */
                var urlShop = 'wc-api/v3/';
                var urlCoupons = 'wc-api/v3/coupons?oauth_consumer_key=ck_b4cec90641675cae68f0b187fc1813eeda408780&oauth_consumer_secret=cs_2f421e60a054dfdf796714fd91683a1a27b20ba0&oauth_signature_method=HMAC-SHA1';
                var urlCustomers = 'wc-api/v3/customers?oauth_consumer_key=ck_b4cec90641675cae68f0b187fc1813eeda408780&oauth_consumer_secret=cs_2f421e60a054dfdf796714fd91683a1a27b20ba0&oauth_signature_method=HMAC-SHA1';
                var urlOrders = 'wc-api/v3/orders?oauth_consumer_key=ck_b4cec90641675cae68f0b187fc1813eeda408780&oauth_consumer_secret=cs_2f421e60a054dfdf796714fd91683a1a27b20ba0&oauth_signature_method=HMAC-SHA1';
                var urlProducts = 'wc-api/v3/products?oauth_consumer_key=ck_b4cec90641675cae68f0b187fc1813eeda408780&oauth_consumer_secret=cs_2f421e60a054dfdf796714fd91683a1a27b20ba0&oauth_signature_method=HMAC-SHA1';
                var urlReports = 'wc-api/v3/reports?oauth_consumer_key=ck_b4cec90641675cae68f0b187fc1813eeda408780&oauth_consumer_secret=cs_2f421e60a054dfdf796714fd91683a1a27b20ba0&oauth_signature_method=HMAC-SHA1';
                var urlWebhooks = 'wc-api/v3/webhooks?oauth_consumer_key=ck_b4cec90641675cae68f0b187fc1813eeda408780&oauth_consumer_secret=cs_2f421e60a054dfdf796714fd91683a1a27b20ba0&oauth_signature_method=HMAC-SHA1';
                return $q.all([
                    $http.get(urlShop),
                    $http.get(urlCoupons),
                    $http.get(urlCustomers),
                    $http.get(urlOrders),
                    $http.get(urlProducts),
                    $http.get(urlReports),
                    $http.get(urlWebhooks)
                ])
                .then(function(resultsWc){
                    var resultWc = {};
                    console.log('|                                                                                                                                                     |');
                    console.log('| * ----- Chargement des Datas WooCommerce : ----- *                                                                                                  |');
                    console.log('*_--WcData--_* (7 Objects): "0 = Shop; 1 = Coupons ; 2 = Customers ; 3 = Orders ; 4 = Products ; 5 = Reports ; 6 = Webhooks"                          |');
                    console.log(resultsWc);

                    var resultWc = {
                        coupons: resultsWc[0].data,
                        customers: resultsWc[1].data,
                        orders: resultsWc[2].data,
                        products: resultsWc[3].data,
                        reports: resultsWc[4].data,
                        webhooks: resultsWc[5].data,
                        shop: resultsWc[6].data,
                    };
                    return resultWc;
                })
                .catch(function (error){
                    console.log('| !!! Error ResultsWc DATA Services !!!');
                });
            }
        }
    })

















    
    .service('postServiceWordpress', function($http, $q){
        console.log('ServiceWordpress Method=POST --> LOAD');
        return {
            postDataServicesWordpress: function($scope){
                var ITM = $scope.itm8 ;
                $scope.item8 = {itemITM8};
                

            }
        }
    })

    /*   
    .controller('Controller', ['$scope', function($scope) {
        $scope.test = {
        name: 'Naomi',
        address: '1600 Amphitheatre'
        };
    }])
    .directive('myTest', function() {
        return {
        template: 'Name: {{test.name}} Address: {{test.address}}'
        };
    });
    */
