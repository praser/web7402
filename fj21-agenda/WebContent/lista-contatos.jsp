<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<c:import url="cabecalho.jsp" />
	
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
				<td><fmt:formatDate value="${ contato.dataNascimento.time }" pattern="dd/MM/yyyy"/></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<c:import url="rodape.jsp" />