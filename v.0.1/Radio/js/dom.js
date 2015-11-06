$('document').ready(function(){
		var cadena= $.getJSON('json/programas.json',function(jd){
			$('#loc').html('<p>'+jd.programas[1].dj+'</p>');
		});
})
	