<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
    </head>

    <body>
        <h1>Struts 2 Iterator ejemplo</h1>

        <h3>Iteracion Simple</h3>
        <ol>
            <s:iterator value="lista" id="dto">
                <ul><s:property  value="#dto.codigoRegion" /> --> <s:property  value="#dto.regionNumRomano" /> --> <s:property  value="#dto.nombreRegion" /></ul>
                </s:iterator>
        </ol>

        <h3>Iteracion con Status y una Tabla</h3>
        <table>
            <s:iterator value="lista" status="IteratorStatus"  id="dto">
                <tr>
                    <s:if test="#IteratorStatus.even == true">
                        <td style="background: #CCCCCC"><s:property  value="#dto.codigoRegion" /> --> <s:property  value="#dto.regionNumRomano" /> --> <s:property  value="#dto.nombreRegion" /></td>
                    </s:if>
                    <s:elseif test="#IteratorStatus.first == true">
                        <td><s:property  value="#dto.codigoRegion" /> --> <s:property  value="#dto.regionNumRomano" /> --> <s:property  value="#dto.nombreRegion" /> (PRIMER VALOR DE LA LISTA) </td>
                    </s:elseif>
                    <s:else>
                        <td><s:property  value="#dto.codigoRegion" /> --> <s:property  value="#dto.regionNumRomano" /> --> <s:property  value="#dto.nombreRegion" /></td>
                    </s:else>
                </tr>
            </s:iterator>
        </table>

    </body>
</html>