!function () {
    'use strict';
    var $window = $(window);

    var RestGet = function () {
        var block = $('#table');
        if (!block.length) {
            return false;
        }
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: '/project',
            success: function (data) {
                $('#table').bootstrapTable({
                    data: data
                });
            },
            error: function (e) {
                console.log(e.responseText);
            }
        });
    };

    // window.onload = RestGet;
    $window.on('load', function () {
        RestGet();
    });

    $(function () {

    });
}();


