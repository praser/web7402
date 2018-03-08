<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<c:import url="cabecalho.jsp" />
	
<h3>Adicionar Contato</h3>
<hr />
<form action="adicionaContato" method="post">
	Nome: <input type="text" name="nome" /><br />
	Email: <input type="text" name="email" /><br />
	Endereço: <input type="text" name="endereco" /><br />
	Data Nascimento: <caelum:campoData id="dataNascimento" /><br />
	
	<input type="submit" value="Gravar"/>
</form>
	
<c:import url="rodape.jsp"></c:import>