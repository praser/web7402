package br.com.caelum.tarefas.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller) throws Exception {
		String uri = request.getRequestURI();
		
		if (uri.endsWith("newSession") || uri.endsWith("createSession") || uri.contains("resources")) {
			return true;
		}
		
		if (request.getSession().getAttribute("user") != null) {
			return true;
		}
		
		response.sendRedirect("newSession");
		return false;
	}
}
