package br.com.caelum.tarefas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.tarefas.dao.JdbcUsuarioDao;
import br.com.caelum.tarefas.modelo.Usuario;

@Controller
public class SessionController {

	@RequestMapping("newSession")
	public String newSession() {
		return "session/new";
	}
	
	@RequestMapping("createSession")
	public String createSession(Usuario usuario, HttpSession session) {
		JdbcUsuarioDao dao = new JdbcUsuarioDao();
		if (dao.existeUsuario(usuario)) {
			session.setAttribute("user", usuario);
			return "home/welcome";
		}
		
		return "redirect:newSession";
	}
	
	@RequestMapping("destroySession")
	public String destroySession(HttpSession session) {
		session.invalidate();
		return "redirect:newSession";
	}
}
