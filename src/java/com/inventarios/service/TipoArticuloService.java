/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inventarios.service;

import java.util.List;
import com.inventarios.models.TipoArticulo;
/**
 *
 * @author Borne
 */
public interface TipoArticuloService {
    public List<TipoArticulo> findAll();
}
