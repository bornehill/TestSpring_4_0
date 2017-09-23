/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inventarios.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.inventarios.models.TipoArticulo;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;
/**
 *
 * @author Borne
 */
@Service
public class TipoArticuloImpl implements TipoArticuloService{
    @PersistenceContext
    EntityManager em;
    
    @Transactional
    public List<TipoArticulo> findAll() {
        CriteriaQuery<TipoArticulo> c = em.getCriteriaBuilder().createQuery(TipoArticulo.class);
        c.from(TipoArticulo.class);
        return em.createQuery(c).getResultList();
    }    
}
