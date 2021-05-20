<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>listar</title>
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
    <c:if test="${productos.size()<1}">
    <li class="nav-item automaticos">    
      <a class="nav-link menu text-primary automaticos" id="automatico" href="listar">CrearProductosAutomaticamente</a>
    </li>
    </c:if>
  </ul>
</nav>
<div class="container w-75">
<c:if test="${productos.size()>0}" >
	
	<p class="text-center text-primary my-5 display-4 font-italic my-3">Productos Registrados<p>
		
	<table class="table">
    <thead class="thead-dark">
      <tr>
      	<th>ID</th>
      	<th>nombre</th>        
        <th>marca</th>
        <th>stock</th>
        <th>precio</th>        
        <th>imagen</th>
        <th><input type="checkbox" id="todos">&nbsp;&nbsp;todos</input></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${productos}" var="p">
      <tr>          
      	<td>${p.idProducto}</td>
        <td>${p.nombre}</td>
        <td>${p.marca}</td>
        <td>${p.stock}</td>
        <td>${p.precio}</td>
        <td class="bebidas"><img height="35" width="35" alt="imagen de bebida" src="/resources/img/${p.imagen.nombre}.png"></img></td>               
       <td><input type="checkbox" class="input-control items" id="${p.idProducto}" /></td>              
      </tr>      
      </c:forEach>   
    </tbody>
  </table>  
  <form  method="post" action="editar" id="frmCrud" style="font-size:120%">
 	<input type="hidden" id="ids" name="ids" value="nulo"/>
  	<input type="button" id="btnModificar" value="modificar" />
  	<input type="button" id="btnEliminar" value="eliminar" />
  </form>
  </c:if>
  <c:if test="${productos.size()<=0}">
  <p class="text-center text-danger my-5 display-4 font-italic my-3">No Existen Productos Registrados<p>
  </c:if>
  
</div>
<footer>
  <div class="container-fluid bg-secondary py-3 my-3">
  <p class="text-white text-center">CopyRight Derechos Reservados, Chile 2020 - <a href="contacto" class="fono">contacto</a></p>
  </div>
</footer>
</body>
</html>
