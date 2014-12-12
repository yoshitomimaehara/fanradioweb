function init_data() {
    var ahora = new Date();
    var horanow = ahora.getHours();
    //var minnow = ahora.getMinutes();
    var dianow = ahora.getDay();
    $.getJSON('json/programas.json', function (data) {
        var cont = 0;
        $.each(data.programas, function (i, item) {
            cont++;
        });
        var i = 1;
        var n;
        var flag = false;
        while (i < cont || flag == false) {
            if (dianow == data.programas[i].dia && (horanow >= data.programas[i].horini || horanow <= data.programas[i].horfin)) {
                n=i;
            }
            i++;
			 flag = true;
        }
        if (flag == false) {
            n = 0;
        }
        $('#loc').text(data.programas[n].dj);
        $('#image').html('<img src=' + "img/" + data.programas[n].img + '/>');
        $('#titulo').text(data.programas[n].nombre);
    });
    refrescar();
}

function limpiar() {
    $('#loc').empty();
    $('#image').empty();
    $('#titulo').empty();
}


function refrescar() {
    limpiar();
    window.setInterval(10000);
    init_data();
}


