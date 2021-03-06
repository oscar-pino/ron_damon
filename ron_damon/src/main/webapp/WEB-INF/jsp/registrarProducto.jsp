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
 	<script src="/resources/js/scripts.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm justify-content-center bg-dark navbar-dark mt-5">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="/">
    <img id="logo"  src="/resources/img/logo.png" alt="esto es un logo" class="rounded-circle">
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">	
    <li class="nav-item">
      <a class="nav-link menu" href="registrar">Registrar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link menu" href="listar">Listar</a>
    </li>
    <li class="nav-item">
      <a class="nav-link menu" href="contacto">Contacto</a>
    </li>
    <li class="nav-item">    
      <a class="nav-link menu" href="logout">Salir</a>
    </li>    
  </ul>
</nav>
<div class="container w-50 my-5"> 
	<p class="text-center text-primary my-5 display-4 font-italic">Datos Del Producto<p>
	<form:form action="registrar" method="post" modelAttribute="producto" >		
	  <div class="form-group">
  <form:label path="nombre">Nombre</form:label>
  	<form:input path="nombre" cssClass="form-control entradas" placeholder="ingrese nombre" id="txtNombre"/><form:errors path="nombre" cssClass="error"></form:errors>
  </div>
  <div class="form-group">
    <form:label path="marca">Marca</form:label>
  	<form:input path="marca" cssClass="form-control entradas" placeholder="ingrese marca" id="txtMarca"/><form:errors path="marca" cssClass="error"></form:errors>
  </div>  

<div class="form-group">
	<form:label path="stock">Stock</form:label>
	<form:input path="stock" placeholder="ingrese stock" cssClass="form-control entradas"/><form:errors path="stock" cssClass="error"></form:errors>
</div>

<div class="form-group">
	<form:label path="precio">Precio</form:label>
	<form:input path="precio" placeholder="ingrese precio" cssClass="form-control entradas" id="numPrecio"/><form:errors path="precio" cssClass="error"></form:errors>
</div>

<div class="form-group">
	<form:label path="fechaIngreso">Fecha de ingreso</form:label>
	<form:input type="date"  path="fechaIngreso" placeholder="ingrese fecha de ingreso" cssClass="form-control entradas" id="datFechaIngreso"/><form:errors path="fechaIngreso" cssClass="error"></form:errors>
</div>
<form:label path="imagen">Imagen</form:label>
<div class="input-group mb-3">	
	<form:select path="imagen" cssClass="desplegable inline w-75 h-25" id="selProducto">
		<form:option value="0" label="seleccione bebestible"/>
		<form:options items="${imagenes}" itemValue="idImagen" itemLabel="nombre" />
	</form:select><img  class="borde ml-5" width="10%" height="12%" id="imgProducto" src="/resources/img/tragos.png"><form:errors path="imagen" cssClass="error"></form:errors>
</div>
<form:button id="btnRegistrarProducto">registrar</form:button>
<input type="reset" value="vaciar" id="btnVaciar"/>
	</form:form>
</div>
<footer>
  <div class="container-fluid bg-secondary py-3 my-3">
  <p class="text-white text-center">CopyRight Derechos Reservados, Chile 2020 - <a href="contacto" class="fono">contacto</a></p>
  </div>
</footer>
</body>
</html>
