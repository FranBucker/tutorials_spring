<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
	<h3>Bienvenido, introduce los detalles de la factura</h3>

	<form:form method="POST" action="/spring-mvc-basics/addInvoice" modelAttribute="invoice">
		<table>
			<tr>
				<td><form:label path="concepto">Concepto</form:label></td>
				<td><form:input path="concepto" /></td>
			</tr>
			<tr>
				<td><form:label path="cantidad">Cantidad</form:label></td>
				<td><form:input path="cantidad" /></td>
			</tr>
			<tr>
				<td><form:label path="porcentajeRetencion">Porcentaje de Retención</form:label></td>
				<td><form:input path="porcentajeRetencion" /></td>
			</tr>
			<tr>
            	<td><form:label path="fechaFactura">Fecha de la factura</form:label></td>
            	<td><form:input path="fechaFactura" /></td>
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