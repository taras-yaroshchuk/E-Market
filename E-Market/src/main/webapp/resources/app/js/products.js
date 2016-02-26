var RestGet = function () {
    $.ajax({
        type: 'GET',
        url: '/getProducts',
        async: true,
        dataType: 'json',
        success: function (json) {
            var prodTable = $('#products_table');
            prodTable.empty();
            prodTable.show();
            var trHTML = '';
            $.each(json, function (key, value) {
                trHTML += '<tr><td>' + value.name + '</td><td>' + value.price +
                    '</td><td>' + value.description + '</td><td>' + value.amount + '</td></tr>';
            });

            prodTable.append(trHTML);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('ERROR!!' + jqXHR.status + ' ' + jqXHR.responseText);
        }
    });
};