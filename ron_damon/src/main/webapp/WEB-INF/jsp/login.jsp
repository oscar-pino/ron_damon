<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>  
  <link href="/resources/css/estilos.css" rel="stylesheet">
  <script type="/resources/js/funciones.js"></script>
 
</head>
<body>
<div class="container w-50 mt-5">
<p class="text-center text-primary my-5 display-4 font-italic">login<p>	
	<form action="/login" style="border:1px solid red" method="post">
  <div class="form-group">
    <label for="txtUsername">ingrese username</label>
    <input type="text" class="form-control" placeholder="ingrese username" id="txtUsername">
  </div>
  <div class="form-group">
    <label for="pswPassword">ingrese password</label>
    <input type="password" class="form-control" placeholder="ingrese password" id="pswPassword">
  </div>
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
  <button type="submit" class="btn btn-succes">Submit</button>
</form>
	
</div>
<footer>
  <div class="container-fluid bg-secondary py-3 my-3">
  <p class="text-white text-center">CopyRight Derechos Reservados, Chile 2020 - <a href="contacto" class="fono">contacto</a></p>
  </div>
</footer>
</body>
</html>
