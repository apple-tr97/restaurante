<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>historialReservaciones.jsp</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  	<script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	
    <script type="text/javascript">
    function report() {
    	console.log("Entramos?");
		$.ajax({	

			type:"GET",
			url:"historialReservaciones.action",
			success: function(result){
				var tblData="";
				$.each(result.reservacionList, function() {					
					tblData += 					
						"<tr>" +
							"<td>" +this.idReservacion+"</td>" +
							"<td>" +this.idUsuario+"</td>" +
							"<td>" +this.idMesa+"</td>" +
							"<td>" +this.fecha+"</td>" +
							"<td>" +this.horario+"</td>" +
							"<td>" +this.npersonas+"</td>" +
						"</tr>";
				});
				$("#body").html(tblData);
			},
			error: function(result){
				alert("Some error occured.");
			}
		});
	}
    </script>
</head>

<body onload="report();">
<div class="container">
  <h2>Historial de reservaciones</h2>
  <p>Reservaciones hechas</p>            
  <table class="table" id="table">
    <thead>
      <tr>
        <th>ID Reservacion</th>
        <th>ID Usuario</th>
        <th>ID Mesa</th>
        <th>Fecha</th>
        <th>Horario</th>
        <th>Numero personas</th>
      </tr>
    </thead>
    <tbody id= "body">
      <tr>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>2020-10-10</td>
        <td>10:20:20</td>
        <td>5</td>
      </tr>
    </tbody>
  </table>
</div>


</body>
</html>
