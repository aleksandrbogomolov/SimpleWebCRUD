var main = function () {
    // var list = ${users};
    $.each($.parseJSON(${users}), function (index, value) {
        $("#table").append("<td>value.id</td>");
        $("#table").append("<td>value.name</td>");
    });
};

$(document).ready(main());