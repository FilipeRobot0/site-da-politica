/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.site_da_politica;

import br.edu.iff.site_da_politica;
import java.time.Instant;
import java.util.Date;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.SettingsFactory;

public class HibernateUsuarioAdm {

    private static final SessionFactory concreteSessionFactory;

    static {
        try {
            concreteSessionFactory = new AnnotationConfiguration()
                    .configure()
                    .addAnnotatedClass(Usuario_Adm.class)
                    .buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession()
            throws HibernateException {
        return concreteSessionFactory.openSession();
    }

    public static void main(String... args) {
        Session session = getSession();
        Transaction tr = session.beginTransaction();
        Usuario_Adm user = (Usuario_Adm) session.get(Usuario_Adm.class, new Integer(1));
        if (user == null) {
            System.out.println("Usuário não encontrado.");
        } else {
            System.out.println("Nome: "+user.getNomeUsuarioAdm());
        }
        
        Usuario_Adm usuario = new Usuario_Adm();
        usuario.setCodigoUsuarioAdm("Sou eu!");
        usuario.setDescricaoEmail("eu@g.c");
        usuario.setDataNascimento(Date.);
        usuario.setNickUsuarioAdm("Eu");
        usuario.setNomeUsuarioAdm("Eu 2");
        usuario.setNumero("Mesmo");
        usuario.setDescricaoUsuarioAdm("Brasil");
        usuario.setNumeroCpf("123"e);
        usuario.setSenha("123");
        usuario.setDescricaoPosicao("Eu 2");
        
         session.save(usuario);
        tr.commit();
        
        session.close();
    }
}   