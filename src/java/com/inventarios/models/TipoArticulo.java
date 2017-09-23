/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inventarios.models;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;
import javax.persistence.Column;
/**
 *
 * @author Borne
 */
@Entity
//@Table(name="tipoarticulo")
public class TipoArticulo implements Serializable{
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer idTipoArticulo;
    
    private String descripcion;
    
    private Date fechaCreacion;
    private Date actualizado;
    private Integer idUsuarioAdd;
    private Integer idUsuarioUpdate;

    public Integer getIdTipoArticulo() {
        return idTipoArticulo;
    }

    public void setIdTipoArticulo(Integer idTipoArticulo) {
        this.idTipoArticulo = idTipoArticulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.descripcion = Descripcion;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Date getActualizado() {
        return actualizado;
    }

    public void setActualizado(Date actualizado) {
        this.actualizado = actualizado;
    }

    public Integer getIdUsuarioAdd() {
        return idUsuarioAdd;
    }

    public void setIdUsuarioAdd(Integer idUsuarioAdd) {
        this.idUsuarioAdd = idUsuarioAdd;
    }

    public Integer getIdUsuarioUpdate() {
        return idUsuarioUpdate;
    }

    public void setIdUsuarioUpdate(Integer idUsuarioUpdate) {
        this.idUsuarioUpdate = idUsuarioUpdate;
    }
    
    public TipoArticulo(){
    }
    
    public TipoArticulo(String descripcion, Date fechaCreacion, Integer idUsuarioAdd){
        this.descripcion=descripcion;
        this.fechaCreacion=fechaCreacion;
        this.idUsuarioAdd=idUsuarioAdd;
    }
}
