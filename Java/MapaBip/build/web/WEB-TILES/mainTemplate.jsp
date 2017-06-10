<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><tiles:insertAttribute name="title" ignore="true" /></title>
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
        <script src="WEB-JS/plugins/flot/excanvas.min.js"></script>
        <script src="WEB-JS/plugins/flot/jquery.flot.js"></script>
        <script src="WEB-JS/plugins/flot/jquery.flot.pie.js"></script>
        <script src="WEB-JS/plugins/flot/jquery.flot.resize.js"></script>
        <script src="WEB-JS/jquery-ui-1.10.4.custom.min.js"></script>
    </head>
    <body>
        <div id="contenedor">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
                <tiles:insertAttribute name="navegacion" />
                <!--tiles:insertAttribute name="menu" />
                <!-- /.navbar-static-side -->
            </nav>
            <div id="page-wrapper">
                <!--div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header" style="color: #999999;"><tiles:insertAttribute name="pagina" ignore="true" /></h1>
                    </div>
                    <!-- /.col-lg-12 -->

                <!--/div>
                <!-- /.row -->
                <div class="row">
                    <tiles:insertAttribute name="cuerpo" />
                </div>
            </div>
        </div>

        
    </body>
    <script>
        $('.help-inline').css('color', 'red');
    </script>
</html>