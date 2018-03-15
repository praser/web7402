package br.com.caelum.tarefas.dao;

import java.util.List;

import br.com.caelum.tarefas.modelo.Tarefa;

public interface TarefaDao {
	Tarefa buscaPorId(Long id);
	List<Tarefa> lista();
	void adiciona(Tarefa tarefa);
	void altera(Tarefa tarefa);
	void remove(Tarefa tarefa);
	void finaliza(Long id);
}