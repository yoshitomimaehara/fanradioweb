$('document').ready(function(){
		$.getJSON('json/programa',function(jd){
			$('#loc').html('<p>'+jd.locutor+'</p>');
		});
		
	
})
	