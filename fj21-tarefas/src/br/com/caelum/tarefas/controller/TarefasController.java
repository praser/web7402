package br.com.caelum.tarefas.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.caelum.tarefas.dao.JdbcTarefaDao;
import br.com.caelum.tarefas.modelo.Tarefa;

@Controller
public class TarefasController {
	@RequestMapping("novaTarefa")
	public String form() {
		return "tarefa/formulario";
	}
	
	@RequestMapping("adicionaTarefa")
	public String adiciona(@Valid Tarefa tarefa, BindingResult validator) {
		if (validator.hasFieldErrors()) {
			return "tarefa/formulario";
		}
		
		JdbcTarefaDao dao = new JdbcTarefaDao();
		dao.adiciona(tarefa);
		
		return "redirect:listaTarefas";
	}
	
	@RequestMapping("listaTarefas")
	public String lista(Model model) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		model.addAttribute("tarefas", dao.lista());
		
		return "tarefa/lista";
	}
	
	@ResponseBody
	@RequestMapping("removeTarefa")
	public void remove(Tarefa tarefa) {
		new JdbcTarefaDao().remove(tarefa);
	}
	
	@RequestMapping("mostraTarefa")
	public String mostra(Long id, Model model) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		model.addAttribute("tarefa", dao.buscaPorId(id));
		return "tarefa/mostra";
	}
	
	@RequestMapping("efetuaAlteracao")
	public String  efetuaAlteracao(@Valid Tarefa tarefa, BindingResult validador, Model model) {
		if (validador.hasErrors()) {
			model.addAttribute("tarefa", tarefa);
			return "redirect:mostraTarefa?id=" + tarefa.getId();
		}
		
		JdbcTarefaDao dao = new JdbcTarefaDao();
		dao.altera(tarefa);
		
		return "redirect:listaTarefas";
		
	}
	
	@RequestMapping("finalizaTarefa")
	public String finaliza(Long id, Model model) {
		JdbcTarefaDao dao = new JdbcTarefaDao();
		dao.finaliza(id);
		model.addAttribute("tarefa", dao.buscaPorId(id));
		
		return "tarefa/finalizada";
	}
}
