<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Spring MVC Form Handling</title>
</head>
<body>

	<h2>Información del Empleado registrado</h2>
	<h3>${msg}</h3>
	<table>
		<tr>
			<td>Name :</td>
			<td>${name}</td>
		</tr>
		<tr>
			<td>ID :</td>
			<td>${id}</td>
		</tr>
		<tr>
			<td>Contact Number :</td>
			<td>${contactNumber}</td>
		</tr>
	</table>
	<br><br>
	 <form action="employee" method="get">
         <button type="submit">Volver</button>
     </form>
</body>
</html>