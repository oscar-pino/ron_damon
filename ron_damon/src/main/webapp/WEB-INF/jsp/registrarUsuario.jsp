<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>registrar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="/resources/css/estilos.css" rel="stylesheet">
 	<script src="/resources/js/funciones.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm justify-content-center bg-dark navbar-dark mt-5">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="/">
    <img id="logo"  src="/resources/img/logo.jpg" alt="esto es un logo" class="rounded-circle">
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">	
    <li class="nav-item">
      <a class="nav-link menu" href="registrarUsuario">Registrar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link menu" href="listarUsuarios">Listar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link menu" href="contacto">Contacto</a>
    </li>
    <li class="nav-item">    
      <a class="nav-link menu" href="logout">Salir</a>
    </li>
  </ul>
</nav>
<div class="container w-75 my-5"> 
	<p class="text-center text-primary my-5 display-4 font-italic">Datos Del Usuario<p>
	<form:form action="crearUsuario" method="post" modelAttribute="usuario" >		
	  <div class="form-group">
  <form:label path="user">Usuario</form:label>
  	<form:input path="user" cssClass="form-control entradas" placeholder="ingrese usuario" id="ctxtUsuario"/><form:errors path="user" cssClass="error"></form:errors>
  </div>
  <div class="form-group">
    <form:label path="password">Password</form:label>
  	<form:input path="password" cssClass="form-control entradas" placeholder="ingrese password" id="ctxtPassword"/><form:errors path="password" cssClass="error"></form:errors>
  </div>  

<div class="form-group">
	<form:label path="rol">Rol</form:label><form:errors path="rol" cssClass="error"></form:errors>
	<form:select path="rol" cssClass="desplegable">
		<form:option value="nulo" label="seleccione rol"/>
		<form:options items="${roles}" itemValue="idRol" itemLabel="nombre" />
	</form:select>	
</div>

<form:button id="cbtnEnviar">enviar</form:button>
<input type="reset" value="vaciar" id="rbtnVaciar"/>
	</form:form>
</div>
<footer>
  <div class="container-fluid bg-secondary py-3 my-3">
  <p class="text-white text-center">CopyRight Derechos Reservados, Chile 2020 - <a href="contacto" class="fono">contacto</a></p>
  </div>
</footer>
</body>
</html>
