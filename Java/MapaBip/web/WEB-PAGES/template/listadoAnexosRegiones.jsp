
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Listado de anexos de regiones</title>
        <!-- Core CSS - Include with every page -->
        <link href="WEB-CSS/bootstrap.min.css" rel="stylesheet">
        <link href="WEB-CSS/flick/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
        <link href="WEB-FONTS/font-awesome/css/font-awesome.css" rel="stylesheet">
        <!-- Page-Level Plugin CSS - Dashboard -->
        <link href="WEB-CSS/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
        <link href="WEB-CSS/plugins/timeline/timeline.css" rel="stylesheet">
        <!-- SB Admin CSS - Include with every page -->
        <link href="WEB-CSS/sb-admin.css" rel="stylesheet">
        <link rel="shortcut icon" href="WEB-ICO/favicon.ico">

        <script src="WEB-JS/jquery-1.10.2.js"></script>
        <script src="WEB-JS/bootstrap.min.js"></script>
        <script src="WEB-JS/plugins/metisMenu/jquery.metisMenu.js"></script>
        <!-- Page-Level Plugin Scripts - Dashboard -->
        <script src="WEB-JS/plugins/morris/raphael-2.1.0.min.js"></script>
        <script src="WEB-JS/plugins/morris/morris.js"></script>
        <script src="WEB-JS/plugins/flot/excanvas.min.js"></script>
        <script src="WEB-JS/plugins/flot/jquery.flot.js"></script>
        <script src="WEB-JS/plugins/flot/jquery.flot.pie.js"></script>
        <script src="WEB-JS/plugins/flot/jquery.flot.resize.js"></script>
        <!-- SB Admin Scripts - Include with every page -->
       
        <script src="WEB-JS/jquery-ui-1.10.4.custom.min.js"></script>

    </head>
    <body>
        
        <div class="col-lg-6">
            <div id="panelTareas" class="col-lg-12">
                <div class="panel panel-primary" >
                    <div class="panel-heading">
                        <strong>Anexos de regiones</strong>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12 text-right">
                                <button id="exportarExcel" class="btn btn-success">
                                    <i class="fa fa-download"></i>
                                    Exportar a Excel
                                </button>
                                <br/>&nbsp;
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="tablaTareas">
                                        <thead>
                                            <tr>
                                                <th>Regi&oacute;n</th>
                                                <th>Anexo</th>
                                                <th>IP</th>
                                                <th>Usuario</th>
                                                <th>Estado</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="listadoAnexos" status="estatus">
                                                <s:if test="estadoNumerico == 0">
                                                    <tr class="text-primary">                                                 
                                                </s:if>
                                                <s:elseif test="estadoNumerico == 1">
                                                    <tr class="text-danger">      
                                                </s:elseif>
                                                <s:elseif test="estadoNumerico == 2">
                                                    <tr class="text-danger">      
                                                </s:elseif>
                                                <s:else>
                                                    <tr>      
                                                </s:else>
                                                    <td><small><s:property value="region" /></small></td>
                                                    <td><small><s:property value="anexo" /></small></td>
                                                    <td><small><s:property value="IP" /></small></td>
                                                    <td><small><s:property value="nombre" /></small></td>
                                                    <td><small><s:property value="estado" /></small></td>
                                                </tr>
                                            </s:iterator>                                        
                                        </tbody>
                                    </table>
                                </div>
                                                                
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        
    </body>
    <script>
        $('.help-inline').css('color', 'red');
        
        $("#exportarExcel").click(function(){
           document.location.href = "./excelEstadoTelefoniaRegiones";
        });
    </script>
</html>