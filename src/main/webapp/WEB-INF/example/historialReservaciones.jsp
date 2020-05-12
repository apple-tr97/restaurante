<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>historialReservaciones.jsp</title>
	<link href="../styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
    function report() {		
		$.ajax({			
			type:"GET",
			url:"report.action",
			success: function(result){
				var tblData="";
				$.each(result.reservacionList, function() {					
					tblData += 
						"<tr>" +
							"<td>" +this.id_reservacion+"</td>" +
							"<td>" +this.id_usuario+"</td>" +
							"<td>" +this.id_mesa+"</td>" +
							"<td>" +this.fecha+"</td>" +
							"<td>" +this.horario+"</td>" +
							"<td>" +this.npersonas+"</td>" +
						"</tr>";
				});
				$("#container").html(tblData);
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
  <h2>Basic Table</h2>
  <p>The .table class adds basic styling (light padding and horizontal dividers) to a table:</p>            
  <table class="table">
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
    <tbody>
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
