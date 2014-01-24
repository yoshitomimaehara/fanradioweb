$('document').ready(function(){
		var cadena $.getJSON('json/programas.json',function(jd){
			$('#loc').html('<p>'+jd.Fanradio.programas[1].locutor+'</p>');
		});
})
	