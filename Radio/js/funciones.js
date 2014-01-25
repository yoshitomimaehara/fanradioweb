function init_data(){
      var num = ;
      $.getJSON('json/programas.json',function(data){
			  $('#loc').append(data.programas[num].dj);
        $('#image').append('<img src='+"img/" + data.programas[num].img+'/>');
			});
}

function getNumber(){
    var ahora = new Date;
	var horanow=ahora.getHours();
	var minnow=ahora.getMinutes());
	
   return
}






