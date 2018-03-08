<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Contatos</title>
</head>
<body>
	<!-- Cria o Dao -->
	<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao" />
	
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
			</tr>
		</thead>
		<tbody>
			<!-- Percorre os contatos montando as linhas da tabela -->
			<c:forEach var="contato" items="${dao.lista}">
				<tr>
					<td>${ contato.id }</td>
					<td>${ contato.nome }</td>
					<td>
						<c:if test="${ not empty contato.email }">
							<a href="mailto:${ contato.email }">${ contato.email }</a>
						</c:if>
						<c:if test="${ empty contato.email }">
							E-mail não informado	
						</c:if>
					</td>
					<td>${ contato.endereco }</td>
					<td>${ contato.dataNascimento.time }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>