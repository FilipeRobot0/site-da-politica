/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.site_da_politica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "usuario_comum")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UsuarioComum.findAll", query = "SELECT u FROM UsuarioComum u")
    , @NamedQuery(name = "UsuarioComum.findByDsEmail", query = "SELECT u FROM UsuarioComum u WHERE u.dsEmail = :dsEmail")
    , @NamedQuery(name = "UsuarioComum.findByDsUsuarioComum", query = "SELECT u FROM UsuarioComum u WHERE u.dsUsuarioComum = :dsUsuarioComum")
    , @NamedQuery(name = "UsuarioComum.findByNrNumero", query = "SELECT u FROM UsuarioComum u WHERE u.nrNumero = :nrNumero")
    , @NamedQuery(name = "UsuarioComum.findByNrCpf", query = "SELECT u FROM UsuarioComum u WHERE u.nrCpf = :nrCpf")
    , @NamedQuery(name = "UsuarioComum.findByNmSenha", query = "SELECT u FROM UsuarioComum u WHERE u.nmSenha = :nmSenha")
    , @NamedQuery(name = "UsuarioComum.findByDsPosicao", query = "SELECT u FROM UsuarioComum u WHERE u.dsPosicao = :dsPosicao")
    , @NamedQuery(name = "UsuarioComum.findByNmUsuarioComum", query = "SELECT u FROM UsuarioComum u WHERE u.nmUsuarioComum = :nmUsuarioComum")
    , @NamedQuery(name = "UsuarioComum.findByNmNickNameComum", query = "SELECT u FROM UsuarioComum u WHERE u.nmNickNameComum = :nmNickNameComum")
    , @NamedQuery(name = "UsuarioComum.findByCdUsuarioComum", query = "SELECT u FROM UsuarioComum u WHERE u.cdUsuarioComum = :cdUsuarioComum")
    , @NamedQuery(name = "UsuarioComum.findByDtNascimento", query = "SELECT u FROM UsuarioComum u WHERE u.dtNascimento = :dtNascimento")})
public class UsuarioComum implements Serializable {

    private static final long serialVersionUID = 1L;
    @Size(max = 2147483647)
    @Column(name = "ds_email")
    private String dsEmail;
    @Size(max = 20)
    @Column(name = "ds_usuario_comum")
    private String dsUsuarioComum;
    @Basic(optional = false)
    @NotNull
    @Column(name = "nr_numero")
    private long nrNumero;
    @Column(name = "nr_cpf")
    private Long nrCpf;
    @Size(max = 50)
    @Column(name = "nm_senha")
    private String nmSenha;
    @Size(max = 2147483647)
    @Column(name = "ds_posicao")
    private String dsPosicao;
    @Size(max = 2147483647)
    @Column(name = "nm_usuario_comum")
    private String nmUsuarioComum;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2147483647)
    @Column(name = "nm_nick_name_comum")
    private String nmNickNameComum;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "cd_usuario_comum")
    private Integer cdUsuarioComum;
    @Column(name = "dt_nascimento")
    @Temporal(TemporalType.DATE)
    private Date dtNascimento;

    public UsuarioComum() {
    }

    public UsuarioComum(Integer cdUsuarioComum) {
        this.cdUsuarioComum = cdUsuarioComum;
    }

    public UsuarioComum(Integer cdUsuarioComum, long nrNumero, String nmNickNameComum) {
        this.cdUsuarioComum = cdUsuarioComum;
        this.nrNumero = nrNumero;
        this.nmNickNameComum = nmNickNameComum;
    }

    public String getDsEmail() {
        return dsEmail;
    }

    public void setDsEmail(String dsEmail) {
        this.dsEmail = dsEmail;
    }

    public String getDsUsuarioComum() {
        return dsUsuarioComum;
    }

    public void setDsUsuarioComum(String dsUsuarioComum) {
        this.dsUsuarioComum = dsUsuarioComum;
    }

    public long getNrNumero() {
        return nrNumero;
    }

    public void setNrNumero(long nrNumero) {
        this.nrNumero = nrNumero;
    }

    public Long getNrCpf() {
        return nrCpf;
    }

    public void setNrCpf(Long nrCpf) {
        this.nrCpf = nrCpf;
    }

    public String getNmSenha() {
        return nmSenha;
    }

    public void setNmSenha(String nmSenha) {
        this.nmSenha = nmSenha;
    }

    public String getDsPosicao() {
        return dsPosicao;
    }

    public void setDsPosicao(String dsPosicao) {
        this.dsPosicao = dsPosicao;
    }

    public String getNmUsuarioComum() {
        return nmUsuarioComum;
    }

    public void setNmUsuarioComum(String nmUsuarioComum) {
        this.nmUsuarioComum = nmUsuarioComum;
    }

    public String getNmNickNameComum() {
        return nmNickNameComum;
    }

    public void setNmNickNameComum(String nmNickNameComum) {
        this.nmNickNameComum = nmNickNameComum;
    }

    public Integer getCdUsuarioComum() {
        return cdUsuarioComum;
    }

    public void setCdUsuarioComum(Integer cdUsuarioComum) {
        this.cdUsuarioComum = cdUsuarioComum;
    }

    public Date getDtNascimento() {
        return dtNascimento;
    }

    public void setDtNascimento(Date dtNascimento) {
        this.dtNascimento = dtNascimento;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cdUsuarioComum != null ? cdUsuarioComum.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsuarioComum)) {
            return false;
        }
        UsuarioComum other = (UsuarioComum) object;
        if ((this.cdUsuarioComum == null && other.cdUsuarioComum != null) || (this.cdUsuarioComum != null && !this.cdUsuarioComum.equals(other.cdUsuarioComum))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "br.edu.iff.site_da_politica.UsuarioComum[ cdUsuarioComum=" + cdUsuarioComum + " ]";
    }

    void setcodigoUsuarioComum(int parseInt) {
        this.cdUsuarioComum = parseInt;
    }

    void setDescricaoEmail(String parameter) {
        this.dsEmail = parameter; 
    }

    void setDescricaoUsuarioComum(String parameter) {
        this.dsUsuarioComum = parameter;
    }

    void setNumero(Integer integer) {
        this.nrNumero = integer;
    }

    void setSenha(String parameter) {
        this.nmSenha = parameter;
    }

    void setDescricaoPosicao(String parameter) {
        this.dsPosicao = parameter;
    }

    void setNomeUsuarioComum(String parameter) {
        this.nmUsuarioComum = parameter;
    }

    void setNickNameUsuarioComum(String parameter) {
        this.nmNickNameComum = parameter;
    }
    /*
    void setDataNascimento(String parameter) {
        this.dtNascimento = parameter;
    }
    */
}