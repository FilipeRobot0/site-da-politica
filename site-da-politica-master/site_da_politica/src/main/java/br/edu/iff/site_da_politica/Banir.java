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

@Entity 
@Table(name = "banir")
public class Banir implements Serializable {

    @Id
    @Column(name = "cd_usuario_adm")
    Integer codigoUsuarioAdm;
    
    @Id
    @Column(name = "cd_usuario_comum")
    Integer codigoUsuarioComum;
    
    @Id
    @Column(name = "cd_usuario_politico")
    Integer codigoUsuarioPolitico;
    
    @Id
    @Column(name = "cd_banir")
    Integer codigoBanir;
    
  //CONSTRAINT pk_cd_banir PRIMARY KEY (cd_banir)   
}