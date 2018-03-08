package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaContatoDao {

	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setNome("Rubens Praser Júnior");
		contato.setEmail("praser@gmail.com");
		contato.setEndereco("CNB 06 Lote 3 Apartamento 901");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		dao.adciona(contato);
		
		System.out.println("Gravado!");
	}

}
