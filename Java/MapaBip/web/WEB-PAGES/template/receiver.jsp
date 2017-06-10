<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>...</title>
        <!-- Core CSS - Include with every page -->
        <link href="WEB-CSS/bootstrap.min.css" rel="stylesheet">
        <link href="WEB-FONTS/font-awesome/css/font-awesome.css" rel="stylesheet">
        <!-- Page-Level Plugin CSS - Dashboard -->
        <link href="WEB-CSS/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
        <link href="WEB-CSS/plugins/timeline/timeline.css" rel="stylesheet">
        <!-- SB Admin CSS - Include with every page -->
        <link href="WEB-CSS/sb-admin.css" rel="stylesheet">
    </head>
    <body>
        <s:div cssClass="col-lg-12">
            <s:div cssClass="panel panel-default" >
                <s:div cssClass="panel-heading">
                    Titulo de la seccion
                </s:div>
                <s:div cssClass="panel-body">
                    <s:div cssClass="row">
                        <s:div cssClass="col-lg-6">
                            <!--  CONTENIDO -->
                            LOS VALORES RECIBIDOS SON: <br>

                            nombre : ${nombre} <br>
                            apellidos : ${apellidos} <br>
                            direccion : ${direccion} <br>
                            email : ${email} <br>
                            region : ${region} <br>
                            comuna : ${comuna} <br>
                            intereses : ${intereses} <br>
                            intereses2 : ${intereses2} <br>
                            edadRango : ${edadRango} <br>
                            descripcion : ${descripcion} <br>
                            fileName : ${fileName} <br>

                            <!-- FIN CONTENIDO -->
                        </s:div>

                    </s:div>
                    <!-- /.row (nested) -->
                </s:div>
                <!-- /.panel-body -->
            </s:div>
            <!-- /.panel -->
        </s:div>
        <!-- /.col-lg-12 -->
        <!-- Core Scripts - Include with every page -->
        <script src="WEB-JS/jquery-1.10.2.js"></script>
        <script src="WEB-JS/bootstrap.min.js"></script>
        <script src="WEB-JS/plugins/metisMenu/jquery.metisMenu.js"></script>
        <!-- Page-Level Plugin Scripts - Dashboard -->
        <script src="WEB-JS/plugins/morris/raphael-2.1.0.min.js"></script>
        <script src="WEB-JS/plugins/morris/morris.js"></script>
        <!-- SB Admin Scripts - Include with every page -->
        <script src="WEB-JS/sb-admin.js"></script>
        <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
        <script src="WEB-JS/demo/dashboard-demo.js"></script>
    </body>

</html>