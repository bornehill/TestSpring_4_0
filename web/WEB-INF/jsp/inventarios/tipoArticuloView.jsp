<%-- 
    Document   : tipoArticuloView
    Created on : 22/09/2017, 04:23:35 PM
    Author     : Borne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <spring:url value="/resource/css/bootstrap.min.css" var="bootstrapCSS"/>
        <spring:url value="/resource/css/materialize.min.css" var="materializeCSS"/>
        <spring:url value="/resource/js/jquery.min.js" var="jqueryJS"/>
        <spring:url value="/resource/js/bootstrap.min.js" var="bootstrapJS"/>
        <spring:url value="/resource/js/materialize.min.js" var="materializeJS"/>

        <link href="${bootstrapCSS}" rel="stylesheet"/>
        <link href="${materializeCSS}" rel="stylesheet"/>
        <script src="${jqueryJS}"></script>
        <script src="${bootstrapJS}"></script>
        <script src="${materializeJS}"></script>        
        <title>Catalogo de tipo art&iacute;culo </title>
    </head>
    <body>
    <h4 class="red-text text-darken-4 center-align" id='encabezado'>Tipo de art&iacute;culos</h4>
    <hr>
    <form action='tipoArticulo' method='post'>
        <div class="row">
            <table class="striped centered">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Tipo</th>
                        <th>Acci&oacute;n</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tipoArticulo" items="${tipoArticulos}" varStatus="loop">
                      <tr>
                        <td>${loop.index+1}</td>
                        <td>${tipoArticulo.descripcion}</td>
                        <td><a class="red-text text-darken-4" href="modificaTipoArticulo/${tipoArticulo.idTipoArticulo}" title="Modificar"><i class="material-icons">mode_edit</i></a>
                            <a class="red-text text-darken-4" href="eliminaTipoArticulo/${tipoArticulo.idTipoArticulo}" title="Eliminar"><i class="material-icons">remove_circle</i></a>
                        </td>
                      </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col s3">
                <h6 class="red-text text-darken-4">Agregar tipo de art&iacute;culo</h6>
                <input type='text' name='descTipoArticulo'  placeholder='Tipo de art&iacute;culo.'>

                <button class="btn waves-effect waves-light red darken-4" type="submit" name="action">Agregar
                    <i class="material-icons right">add_circle</i>
                </button>		    		
            </div>
        </div>
    </form>    
    </body>
</html>
