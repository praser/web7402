<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<td>${tarefa.id}</td>
<td>${tarefa.descricao}</td>
<td>Finalizado</td>
<td>
	<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
</td>
<td>
	<ul>
		<li><a href="removeTarefa?id=${tarefa.id}">Remover</a></li>
		<li><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></li>
	</ul>		
</td>