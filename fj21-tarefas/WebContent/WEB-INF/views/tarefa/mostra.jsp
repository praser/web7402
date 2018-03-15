<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mostrar Tarefa</title>
</head>
<body>
	<form action="efetuaAlteracao" method="post">
		<label for="descricao">Descrição</label>
		<textarea id="descricao" name="descricao">${tarefa.descricao}</textarea>
		<br/>
		
		<label for="finalizado">Finalizada?</label>
		<input type="checkbox" id="finalizado" name="finalizado" value="true" ${tarefa.finalizado ? "checked" : ""} />
		<br/>
		
		<label for="dataFinalizacao">Data de finalização</label>
		<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" var="dataFinalizacao"/>
		<input type="text" id="dataFinalizacao" name="dataFinalizacao" value="${dataFinalizacao}" />
		<br/>
		
		<input type="hidden" name="id" value="${tarefa.id}">
		
		<input type="submit" value="Alterar" />
	</form> 
</body>
</html>