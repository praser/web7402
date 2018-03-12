<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
	<body>
		<a href="novaTarefa">Criar nova tarefa</a>
		
		<br /><br />
		
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Descrição</th>
					<th>Finalização</th>
					<th>Data Finalização</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${tarefas}" var="tarefa">
					<tr>
						<td>${tarefa.id}</td>
						<td>${tarefa.descricao}</td>
						<td>
							<c:if test="${tarefa.finalizado eq false}">
								Não finalizado
							</c:if>
							<c:if test="${tarefa.finalizado eq true}">
								Finalizado
							</c:if>
						</td>
						<td>
							<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
						</td>
						<td>
							<ul>
								<li><a href="removeTarefa?id=${tarefa.id}">Remover</a></li>
								<li><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></li>
							</ul>		
						</td>
				</c:forEach>
			</tbody>
		</table>	
	</body>
</html>