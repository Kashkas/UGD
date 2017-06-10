<%@page import="org.example.newXMLSchema.OpcionType"%>
<%@page import="org.example.newXMLSchema.MenuType"%>
<%@page import="cl.subtel.struts2.util.Utils"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            
            <%
                Object usuarioObj = session.getAttribute("usuario");
                String usuario = null;
                if (usuarioObj != null) {
                    usuario = usuarioObj.toString();
                }
                StringBuilder sb = Utils.armaMenu(usuario);
            %>
            <%=sb.toString()%>
            
            <li>&nbsp;<br/></li>

            
        </ul>
   
        <!-- /#side-menu -->
    </div>
    <!-- /.sidebar-collapse -->
</div>