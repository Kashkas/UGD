
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Monitor de aplicaciones y servidores DDT</title>
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
        <div class="col-lg-3">
            <div id="panelServidores" class="panel panel-success" >
                <div class="panel-heading">
                    <strong>Servidores de aplicaciones</strong>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <br/>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Servidor</th>
                                            <th>Estado</th>
                                            <th>Memoria</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr id="servidorHudson">
                                            <td>Hudson</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr id="servidorSistemas">
                                            <td>Sistemas</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr id="servidorPte01">
                                            <td>PTE01</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr id="servidorPte01Telco">
                                            <td>PTE01 Telco</td>
                                            <td></td>
                                            <td></td>
                                        </tr>                                        
                                        <tr id="servidorFirmaDigital">
                                            <td>Firma Digital</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr id="servidorSti3">
                                            <td>STI 3</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr id="servidorHudsonWso2">
                                            <td>Hudson WSO2</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr id="servidorAntenas">
                                            <td>Antenas</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <!--tr id="servidorCpt">
                                            <td>CPT</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr id="servidorScg">
                                            <td>SCG</td>
                                            <td></td>
                                            <td></td>
                                        </tr-->
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-lg-3">
            <!-- Aplicaciones -->
            <div class="col-lg-12">
                <div class="panel panel-default" >
                    <div class="panel-heading">
                        <strong>Aplicaciones</strong>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="flot-chart col-lg-6" style="text-align:center;width:150px;height:200px;text-align:center;margin:0 auto">
                                <div class="flot-chart-content" id="grafico_aplicaciones"></div>
                            </div> 
                            <div class="col-lg-1"></div>
                            <div class="col-lg-5 ">
                                <p class="lead">Aplicaciones caidas:</p>
                                <!--div class="alert alert-danger">
                                    SGF
                                </div>
                                <div class="alert alert-danger">
                                    AutoOficiar
                                </div-->
                            </div> 
                        </div>
                        <!--div class="row">
                            <button type="button" class="btn btn-outline btn-default btn-xs">
                                <i class="fa fa-plus-square"></i>
                                Ver todos las aplicaciones
                            </button>
                        </div-->
                    </div>
                </div>
            </div>


            <!-- Servicios -->
            <div class="col-lg-12">
                <div class="panel panel-default" >
                    <div class="panel-heading">
                        <strong>Servicios</strong>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="flot-chart col-lg-6" style="text-align:center;width:150px;height:200px;text-align:center;margin:0 auto">
                                <div class="flot-chart-content" id="grafico_servicios"></div>
                            </div> 
                            <div class="col-lg-1"></div>
                            <div class="col-lg-5">
                                <p class="lead">Servicios caidos:</p>
                                <!--span class="alert alert-danger">
                                    RespuestaSernac
                                </span-->
                            </div> 
                        </div>
                        <!--div class="row">
                            <button type="button" class="btn btn-outline btn-default btn-xs">
                                <i class="fa fa-plus-square"></i>
                                Ver todos los servicios
                            </button>
                        </div-->
                    </div>
                </div>
            </div>
        </div> 
        
        <!-- Mesa Ayuda -->
        <div class="col-lg-3">
            <div class="col-lg-12">
                <div class="panel panel-default" >
                    <div class="panel-heading">
                        <strong>Mesa de Ayuda</strong>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div id="mesaAyuda-chart" style="width:250px;height:250px;s">

                                </div>
                            </div> 

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div id="panelTareas" class="col-lg-12">
                <div class="panel panel-primary" >
                    <div class="panel-heading">
                        <strong>Tareas programadas</strong>
                    </div>
                    <div class="panel-body">
                        <div class="row" style="padding-left: 10px">
                            <div class="col-lg-8">
                                Estado del controlador de procesos: <span id="estadoProcesos"><span class="text-danger"><strong>Activo</strong></span></span>
                            </div>
                            <!--div class="col-lg-4">
                                <button type="button" name="btn_detener" id="btn_detener" class="btn btn-danger btn-xs">
                                    Detener
                                </button>
                            </div-->    
                        </div>
                        <div class="row" style="padding-left: 12px">&nbsp;</div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="tablaTareas">
                                    <thead>
                                        <tr>
                                            <th>Tarea</th>
                                            <th>Periodicidad</th>
                                            <!--th>Detalle</th-->
                                        </tr>
                                    </thead>
                                    <tbody>
                                      
                                        
                                    </tbody>
                                </table>
                            </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            
            <div id="panelTelefonia" class="col-lg-12">
                <div class="panel panel-primary" >
                    <div class="panel-heading">
                        <strong>Telefon&iacute;a IP</strong>
                    </div>
                    <div class="panel-body">
                        <div class="row" style="padding-left: 10px">
                            <div class="col-lg-8">
                                Tel&eacute;fonos IP de Regiones
                            </div>   
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="tablaTelefonia">
                                        <thead>
                                            <tr>
                                                <th class="alert alert-success">OK</th>
                                                <th class="alert alert-danger">Inalcanzable</th>
                                                <th class="alert" style="background-color: #CACACA; color: #666666;">Desconocido</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-success text-right"><strong id="numeroTelefonosOk">0</strong></td>
                                                <td class="text-danger text-right"><strong id="numeroTelefonosInalcanzables">0</strong></td>
                                                <td class="text-muted text-right"><strong id="numeroTelefonosDesconocidos">0</strong></td>
                                            </tr>
                                            <tr>
                                                <td id="listaTelefonosOk" class=" text-right">--</td>
                                                <td id="listaTelefonosInalcanzables" class=" text-right"></td>
                                                <td id="listaTelefonosDesconocidos" class=" text-right"></td>
                                            </tr>
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
    </script>
    <script src="WEB-JS/monitorDDT.js"></script>
</html>