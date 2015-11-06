$(document).ready(function(){
	$.ajax({
		url: 'controller.php',
		type: 'get',
		timeout: 5000,
		async: true,
		success: function(response) {
			var cadena = response.split(",")
			$('#loc').text(cadena[1]);
			$('#titulo').text(cadena[0]);
			$('#oyentes').text(" Fan-Oyentes");
            $('#image').html('<img src="img/'+ cadena[0] + '.png"/>');
		}
	})
});
//$('#loc').text("V-Chan");
//$('#titulo').text("Auto Dj");
//$('#image').html('<img src="img/Auto_Dj.png" />');
