<%-- 
    Document   : mapaPuntosCarga
    Created on : 09-jun-2017, 9:01:21
    Author     : jramirez
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<link href="WEB-CSS/bootstrap.min.css" rel="stylesheet">
<link href="WEB-CSS/mapasPuntoCarga.css" rel="stylesheet">
<link rel="shortcut icon" href="WEB-ICO/favicon.ico">
<!--script src="WEB-JS/jquery-1.10.2.js"></script-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://cdn.jquerytools.org/1.2.6/form/jquery.tools.min.js"></script>
<script src="WEB-JS/bootstrap.min.js"></script>
<script src="WEB-JS/angular.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBExcTSY9RvSyRy5nbJh_i0c5IOIBF6bzE&libraries=places,geometry"></script>
<script src="WEB-JS/mapaPuntosCarga.js"></script>

<div class="container" ng-app="myApp" ng-controller="nuevoLugar">
    <input type="hidden" name="servidor" ng-init="servidor='<s:property value="servidor"/>'" value="<s:property value="servidor"/>" ng-model="servidor"/>
    <h3 class="clearfix">
        <span class="headline-primary">Unidad de <br>Modernización y <br>Gobierno Digital</span>
        <span class="headline-secondary">Ministerio Secretaría General<br> de la Presidencia</span>
    </h3>
    
    <div class="alert alert-danger text-center" role="alert" ng-show="apiError">
        <b>API Error : </b>
        <span>{{ apiStatus }}</span>
    </div>

    <div id="wrapper">
        <div id="map"></div>
        <div id="sobreMap">
            <label>&Aacute;rea de Busqueda</label>
            <input type="range" id="rango" name="rango" min="0" max="5000" step="10" ng-model="rangeValue" ng-change="cambiaCirculo()"/>
            <div>Radio: {{rangeValue}} mts.</div>
        </div>
    </div>    
    
</div>
