package restaurante.reservacionAction;

import restaurante.reservacionDAO.ReservacionDAO;
import restaurante.reservacionBean.UserBean;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import java.util.Map;


public class LoginAction extends ActionSupport implements SessionAware {
    private static final long serialVersionUID = 1L;
    private SessionMap<String,Object> sessionMap;
    public String pass;
    public String user;
    public String autenticado = "false";
    public UserBean userbean = new UserBean();
    public UserBean getUserbean() {
        return userbean;
    }
    public void setUserbean(UserBean userbean) {
        this.userbean = userbean;
    }
    public String getAutenticado() {
        return autenticado;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String validar() {
        if(sessionMap!=null){
            sessionMap.invalidate();
        }
        userbean = ReservacionDAO.getUsuarioByNameAndPass(getUser(), getPass());
        System.out.println(userbean);
        if(userbean.getNombre() != null) {
            this.autenticado = "true";
            sessionMap.put("mail",user);
            sessionMap.put("name",userbean.getNombre());
            sessionMap.put("type",userbean.getType());
            sessionMap.put("id",(Integer)userbean.getId_usuario());

            return SUCCESS;
        } else {
            this.autenticado = "false";
            return ERROR;
        }
    }

    public String validarStuff() {
        if(sessionMap!=null){
            sessionMap.invalidate();
        }
        return SUCCESS;
    }


    public void setSession(Map<String, Object> map) {
        sessionMap=(SessionMap)map;
    }
}
