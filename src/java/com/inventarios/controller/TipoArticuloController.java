/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inventarios.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import com.inventarios.service.TipoArticuloService;
import com.inventarios.models.TipoArticulo;
import java.util.List;
/**
 *
 * @author Borne
 */
@Controller
public class TipoArticuloController {
    @Autowired
    private TipoArticuloService tipoArticuloService;    
    
    @RequestMapping("/tipoArticulo.htm")
    public String getAll(Model model) {
            // This returns a JSON or XML with the users
            List<TipoArticulo> tipoArticulos=tipoArticuloService.findAll();
            model.addAttribute("tipoArticulos", tipoArticulos);
            return "/inventarios/tipoArticuloView";
    }    
    
}
