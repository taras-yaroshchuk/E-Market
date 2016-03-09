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
        //use '$' prefix when you use jQuery variable - it will be a bit easier to understand
        var $tableBody = $("#productsTableBody");
        $tableBody.empty();
        //use native forEach - it's more fast. Or use Lodash/Underscore - util libs for arrays and objects
        data.forEach(function (value) {
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
});

var RestGet = function (category_id) {
    $.ajax({
        type: 'GET',
        url: '/getProductsByCategoryId/'+category_id,
        async: true,
        dataType: 'json',
        success: function (json) {
            var $prodTable = $('#products_table');
            $prodTable.empty();
            $prodTable.show();
            var trHTML = '';
            $.each(json, function (key, value) {
                trHTML += '<tr><td>' + value.name + '</td><td>' + value.price +
                    '</td><td>' + value.description + '</td><td>' + value.amount + '</td></tr>';
            });

            $prodTable.append(trHTML);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('ERROR!!' + jqXHR.status + ' ' + jqXHR.responseText);
        }
    });
};