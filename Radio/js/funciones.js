	function getPrograma(num){
		
	
	}
	
	function cargaImagenes(num){
		$.getJSON('json/programas.json',function(data){
			$('#image').value("src","img/" + data.programas[num].img);
		});
	}
	
	function getLocutor(num){
			$.getJSON('json/programas.json',function(data){
			$('#loc').append(data.programas[num].dj);
			});
	}