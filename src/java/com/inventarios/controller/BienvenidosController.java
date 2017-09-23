/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inventarios.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 *
 * @author Borne
 */
@Controller
public class BienvenidosController {
    @RequestMapping("/bienvenidos.htm")
    public String greeting(@RequestParam(value="user", required=false, defaultValue="invitado") String user, Model model) {
        model.addAttribute("user", user);
        return "/inventarios/bienvenidos";
    }    
}
