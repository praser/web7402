<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
	<body>
		<h3>Adicionar Tarefas</h3>
		
		<form action="adicionaTarefa" method="post">
			<label for="descricao">Descrição</label>
			<textarea id="descricao" name="descricao"></textarea>
			<form:errors path="tarefa.descricao" />
			
			<input type="submit" value="Adicionar"/>
		</form>
	</body>
</html>