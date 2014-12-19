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
    document.getElementById('loc').InnerText(data.programas[n].dj)
    document.getElementById('image').InnerHTML('<img src=' + "img/" + data.programas[n].img + '/>')
    document.getElementById('titulo').InnerText(data.programas[n].nombre)
    refrescar();
}

function vaciar(){

}

function limpiar() {
    document.getElementById('loc').InnerHTML = null;
    document.getElementById('image').InneHTML = null;
    document.getElementById('titulo').InnerHTML = null;
}


function refrescar() {
    limpiar();
    window.setInterval(8000);
    init_data();
}


