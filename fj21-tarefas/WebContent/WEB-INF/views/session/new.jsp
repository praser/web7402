<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login de unsuário</title>
</head>
<body>
	<form action="create" method="post">
		<label for="login">Login</label>
		<input type="text" id="login" name="login"/>
		<br/><br/>
		
		<label for="senha">Senha</label>
		<input type="password" id="senha" name="senha"/>
		<br/><br/>
		
		<input type="submit" value="Enviar" />
	</form>
</body>
</html>