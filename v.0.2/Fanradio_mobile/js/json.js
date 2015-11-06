function init_data() {
    var ahora = new Date();
    var horanow = ahora.getHours();
    var minnow = ahora.getMinutes();
    var dianow = ahora.getDay();
    console.log(horanow +":"+ minnow);
    

    request = new XMLHttpRequest();
    request.open("GET", "programas.json", true);
    console.log(request.status);
    request.onload = function() {
      if (request.status == 200 && request.readyState == 4){
        // Success!
        data = JSON.parse(request.responseText);
        console.log(data.programas[1].dj)
        document.getElementById('loc').textContent = jsonObj.programas[1].dj
        document.getElementById('image').InnerHTML('<img src=' + "img/" + jsonObj.programas[1].img + '/>')
        document.getElementById('titulo').textContent = jsonObj.programas[1].nombre
      } else {
        // We reached our target server, but it returned an error
        console.log("file error")
      }
    };
    request.onerror = function() {
      // There was a connection error of some sort
      console.log("connection error")
    };

    request.send();
    console.log(request.readyState)
    //refrescar();
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


