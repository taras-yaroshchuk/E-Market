//define namespace. It's not necessary, but will help in future
var WebPage = WebPage || {};

//define class
var ProductsController = function () {
    //this will be reference to the controller
    var obj = {};

    //private functions will look like this:
    /**
     * callback for successful call;
     * @param data obtained in response
     */
    function onDataLoaded(data) {
        displayData(data);
        $('#products_table').dataTable({
            "bInfo" : false
        });
    }

    function displayData(data) {
        //use '$' prefix when you use jQuery variable - it will be a bit easier to understand
        var $tableBody = $("#productsTableBody");
        $tableBody.empty();
        //use native forEach - it's more fast. Or use Lodash/Underscore - util libs for arrays and objects
        _.forEach(data, function(value) {
            //ints just a bit more convenient way to use jQuery
            var $row = $("<tr>");
            $row.append($("<td>").text(value.name))
                .append($("<td>").text(value.price))
                .append($("<td>").text(value.description))
                .append($("<td>").text(value.amount));
            $tableBody.append($row);
        });
    }

    /**
     * data loading function
     */
    function loadData() {
        $.get("getProducts", onDataLoaded);
    }

    //public functions will look like this
    obj.init = function () {
        loadData();
    };

    obj.displayProductsByCategoryId = function (category_id) {
        $.get("getProductsByCategoryId", { category_id: category_id}, displayData);
    };

    return obj;
};


var CategoriesController = function () {
    //this will be reference to the controller
    var obj = {};

    //private functions will look like this:
    /**
     * callback for successful call;
     * @param data obtained in response
     */
    function onDataLoaded(data) {
        var $tableBody = $("#categoriesTableBody");
        $tableBody.empty();

        data.forEach(function (value) {
            var $row = $("<tr>");
            $row.append($("<td>").text(value.name).click(function () {
                displayProductsByCategoryId(value.id);
            }));
            $tableBody.append($row);
        });
    }

    function loadData() {
        $.get("getCategories", onDataLoaded);
    }

    //public functions will look like this
    obj.init = function () {
        loadData();
    };

    return obj;
};

/**
 * Function that will executed after document loaded;
 */
$(function () {
    //create element in namespace
    WebPage.productsController = ProductsController();
    //call public method
    WebPage.productsController.init();

    WebPage.categoriesController = CategoriesController();
    WebPage.categoriesController.init();
});

var displayProductsByCategoryId = function (category_id) {
    WebPage.productsController.displayProductsByCategoryId(category_id);
};
