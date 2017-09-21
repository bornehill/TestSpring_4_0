<%-- 
    Document   : bienvenidos
    Created on : 20/09/2017, 10:11:35 PM
    Author     : Borne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <spring:url value="/resource/css/bootstrap.min.css" var="bootstrapCSS"/>
        <spring:url value="/resource/css/materialize.min.css" var="materializeCSS"/>
        <spring:url value="/resource/js/jquery.min.js" var="jqueryJS"/>
        <spring:url value="/resource/js/bootstrap.min.js" var="bootstrapJS"/>
        <spring:url value="/resource/js/materialize.min.js" var="materializeJS"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="${bootstrapCSS}" rel="stylesheet"/>
        <link href="${materializeCSS}" rel="stylesheet"/>
        <script src="${jqueryJS}"></script>
        <script src="${bootstrapJS}"></script>
        <script src="${materializeJS}"></script>        
        
        <title>Inventarios</title>
    </head>
    <body>
  <form name="acceso" action='autentica' method='post'>
    <input type='hidden' name="_token" value="<?php echo csrf_token(); ?>">
      <div id="container">
        <header>
              <h3 class="red darken-4 white-text center-align">Sistema de Inventarios</h3>
        </header>
          <div class="row">
            <div class="col s4">
              <div class="row">
                <div class="input-field">
                  <input id="usuario" name="usuario" type="text" class="validate">
                  <label for="usuario">Usuario</label>
                </div>                
              </div>
              <div class="row">
                <div class="input-field">
                  <input id="pass" name="pass" type="password" class="validate">
                  <label for="pass">Contraseña</label>
                </div>                
              </div>
              <div class="row">
                <button class="btn waves-effect waves-light red darken-4" type="submit" name="action">Autenticar
                  <i class="material-icons right">vpn_key</i>
                </button>                
              </div>                            
            </div>
            <div class="col s8">
               <h3>Bienvenidos</h3>
                <p class="flow-text">Sistema de inventarios de ejemplo para el control de insumos, equipo, software, etc. 
                  Desarrollado en Spring y Material Design</p>              
            </div>
          </div>
       </div>
   </form>
    <footer class"page-footer">
      <div class="container-fluid red darken-4">
        <div class="row">
          <div class="col s12">
            <h6 class="white-text center-align">App por @Alí Escamilla Navarro</h6>
          </div>
        </div>
      </div>
    </footer>
    </body>
</html>
