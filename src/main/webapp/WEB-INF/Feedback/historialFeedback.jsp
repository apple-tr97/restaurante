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

function report() {		
	$.ajax({			
		type:"GET",
		url:"report.action",
		success: function(result){
			var tblData="";
			$.each(result.beanList, function() {					
				tblData += 
			    
				   " <div class='media-12 border p-2' id='dl'>" +
				        
				       
				       	"<p id='idComentarioD'>" + this.id_feedback + "</p>"+
				          "<h4>" + this.id_usuario + "<small><i> Posted on " +  this.date + "</i></small></h4> "+
				         " <p>" +this.star + "</p>"+   " <p>" +this.comentario  +"</p>"+
			
				      
				      "</div>";
				    
				  
			});
			$("#container").html(tblData);
		},
		error: function(result){
			alert("Some error occured.");
		}
	});
}
	

	
	

</script>
<script>
</script>
</head>
<body onload="report()" >



<div class="container">
<div class="row justify-content-center mb-2" >
    <div class="col-md-9 col-lg-9 align-self-center" id="container" >
    
  </div>
</div>
</div>



</body>
</html>

