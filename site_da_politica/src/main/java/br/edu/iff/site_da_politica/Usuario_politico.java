/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.site_da_politica;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "curtir")
public class Usuario_politico implements Serializable {
    
    @Id
    @Column(name = "cd_usuario_politico")
    private Integer codigoUsuarioPolitico;
    
    @Column(name = "nm_usuario_politico")
    private String nomeUsuarioPolitico;

    @Column(name = "nr_cpf")
    private Integer numeroCpf;

    @Column(name = "ds_email")
    private String descricaoEmail;

    @Column(name = "ds_usuario_politico")
    private String descricaoUsuarioPolitico;

    @Column(name = "nm_senha")
    private String senha;

    @Column(name = "nm_nick_politico")
    private String nickPolitico;

    @Column(name = "ds_posicao_politica")
    private Integer descricaoPosicaoPolitica;

    /**
     * @return the codigoUsuarioPolitico
     */
    public Integer getCodigoUsuarioPolitico() {
        return codigoUsuarioPolitico;
    }

    /**
     * @param codigoUsuarioPolitico the codigoUsuarioPolitico to set
     */
    public void setCodigoUsuarioPolitico(Integer codigoUsuarioPolitico) {
        this.codigoUsuarioPolitico = codigoUsuarioPolitico;
    }

    /**
     * @return the nomeUsuarioPolitico
     */
    public String getNomeUsuarioPolitico() {
        return nomeUsuarioPolitico;
    }

    /**
     * @param nomeUsuarioPolitico the nomeUsuarioPolitico to set
     */
    public void setNomeUsuarioPolitico(String nomeUsuarioPolitico) {
        this.nomeUsuarioPolitico = nomeUsuarioPolitico;
    }

    /**
     * @return the numeroCpf
     */
    public Integer getNumeroCpf() {
        return numeroCpf;
    }

    /**
     * @param numeroCpf the numeroCpf to set
     */
    public void setNumeroCpf(Integer numeroCpf) {
        this.numeroCpf = numeroCpf;
    }

    /**
     * @return the descricaoEmail
     */
    public String getDescricaoEmail() {
        return descricaoEmail;
    }

    /**
     * @param descricaoEmail the descricaoEmail to set
     */
    public void setDescricaoEmail(String descricaoEmail) {
        this.descricaoEmail = descricaoEmail;
    }

    /**
     * @return the descricaoUsuarioPolitico
     */
    public String getDescricaoUsuarioPolitico() {
        return descricaoUsuarioPolitico;
    }

    /**
     * @param descricaoUsuarioPolitico the descricaoUsuarioPolitico to set
     */
    public void setDescricaoUsuarioPolitico(String descricaoUsuarioPolitico) {
        this.descricaoUsuarioPolitico = descricaoUsuarioPolitico;
    }

    /**
     * @return the senha
     */
    public String getSenha() {
        return senha;
    }

    /**
     * @param senha the senha to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }

    /**
     * @return the nickPolitico
     */
    public String getNickPolitico() {
        return nickPolitico;
    }

    /**
     * @param nickPolitico the nickPolitico to set
     */
    public void setNickPolitico(String nickPolitico) {
        this.nickPolitico = nickPolitico;
    }

    /**
     * @return the descricaoPosicaoPolitica
     */
    public Integer getDescricaoPosicaoPolitica() {
        return descricaoPosicaoPolitica;
    }

    /**
     * @param descricaoPosicaoPolitica the descricaoPosicaoPolitica to set
     */
    public void setDescricaoPosicaoPolitica(Integer descricaoPosicaoPolitica) {
        this.descricaoPosicaoPolitica = descricaoPosicaoPolitica;
    }

}
