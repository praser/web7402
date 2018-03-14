<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
	<head>
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet"/>
	</head>
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
					<tr id="tarefa_${tarefa.id}">
						<td>${tarefa.id}</td>
						<td>${tarefa.descricao}</td>
						<td id="tarefa_${tarefa.id}">
							<c:if test="${tarefa.finalizado eq false}">
								<a href="#" onClick="finalizaAgora(${tarefa.id})">Finalizar</a>
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
								<li><a href="#" onClick="removeAgora(${tarefa.id})">Remover</a></li>
								<li><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></li>
							</ul>		
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<script type="text/javascript">
			function finalizaAgora(id) {
				$.post("finalizaTarefa", {'id': id}, function(resposta) {
					$('#tarefa_'+id).html(resposta);
				});
			}
			
			function removeAgora(id) {
				$.post("removeTarefa", {'id': id}, function() {
					$('#tarefa_'+id).remove();
				})
			}
		</script>	
	</body>
</html>