<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Spring MVC Form Handling</title>
</head>
<body>

	<h2>Información sobre Factura añadida</h2>
	<h3>${msg}</h3>
	<table>
		<tr>
			<td>Concepto :</td>
			<td>${concepto}</td>
		</tr>
		<tr>
			<td>Cantidad :</td>
			<td>${cantidad}€</td>
		</tr>
		<tr>
			<td>Porcentaje de Retención :</td>
			<td>${porcentajeRetencion}%</td>
		</tr>

		<tr>
        	<td>Cantidad con la retención aplicada :</td>
        	<td>${formateoCantidadSinRetencion}€</td>
        </tr>

		<tr>
        	<td>Fecha de la factura :</td>
        	<td>${fechaFactura}</td>
        </tr>
	</table>
	<br><br>
	<form action="invoice" method="get">
        <button type="submit">Volver</button>
    </form>
</body>
</html>