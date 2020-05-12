<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Twitter</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script type="text/javascript" src="./js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript">
	function registerFeedback() {
		
		
		var id = $("#idUsuario").val();
		var star = $("#star").val();
		var comentario = $("#comentario").val();
		console.log(id);
		console.log(comentario);
		console.log(star);
		$.ajax({
			type : "POST",
			url : "registerfeedback.action",
			data : "id=" + id + "&comentario=" + comentario + "&star=" + star,
			success : function(data) {
				var ht = data.msg;
				$("#resp").html(ht);
			},
			error : function(data) {
				alert("Some error occured.");
			}
		});
	}
	

	
	

</script>
<script>
</script>
</head>
<body >



<div class="container">
 <div class="row justify-content-center mb-2">
          <div class="col-md-10 col-lg-8 aling-self-center">
		
			
			<div class="form-group">
			<textarea class="form-control" rows="5" id="idUsuario" name="idUsuario" placeholder="Id Usario"></textarea>
			<textarea class="form-control" rows="5" id="star" name="comentario" placeholder="Comentario"></textarea>
			 <textarea class="form-control" rows="5" id="star" name="star" placeholder="Stars"></textarea>
				
			</div>
			<button onclick="registerFeedback();" type="button" class="btn btn-success btn-block">Register</button>
			<div class="text-center" id="resp" style="margin-top: 14px;"></div>
	
	
	
  


</div>


</body>
</html>

