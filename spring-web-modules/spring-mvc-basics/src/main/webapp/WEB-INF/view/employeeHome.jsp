<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
	<h3>Bienvenido, introduce los datos del Empleado</h3>

	<form:form method="POST" action="/spring-mvc-basics/addEmployee" modelAttribute="employee">
		<table>
			<tr>
				<td><form:label path="name">Nombre</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="id">Id</form:label></td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="contactNumber">Número de contacto</form:label></td>
				<td><form:input path="contactNumber" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Registrar" /></td>
			</tr>
			<tr>
            	<td><button type="button" onclick="window.location.href='/spring-mvc-basics'">Cancelar</button></td>
            </tr>
		</table>
	</form:form>

</body>

</html>