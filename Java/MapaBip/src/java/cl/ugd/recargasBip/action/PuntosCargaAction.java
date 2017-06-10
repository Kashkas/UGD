/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.ugd.recargasBip.action;

import cl.ugd.recargasBip.util.FileProperties;
import static com.opensymphony.xwork2.Action.SUCCESS;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.validation.SkipValidation;

/**
 *
 * @author jramirez
 */
public class PuntosCargaAction {

    private static final long serialVersionUID = 1L;
    Logger log = LogManager.getLogger(this.getClass().getName());
    private String servidor;
    
    @SkipValidation
    @Action(value = "/mapaPuntosCarga", results = {
        @Result(name = "success", location = "/WEB-PAGES/mapaPuntosCarga.jsp")
    })
    public String mapaPuntosCarga(){
        try{
            servidor = FileProperties.getParamProperties("servicioURL", "server");
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return SUCCESS;
    }

    /**
     * @return the servidor
     */
    public String getServidor() {
        return servidor;
    }

    /**
     * @param servidor the servidor to set
     */
    public void setServidor(String servidor) {
        this.servidor = servidor;
    }

}
