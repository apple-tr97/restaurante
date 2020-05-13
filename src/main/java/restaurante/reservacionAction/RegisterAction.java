package restaurante.reservacionAction;

import restaurante.reservacionDAO.ReservacionDAO;
import restaurante.reservacionBean.UserBean;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class RegisterAction extends ActionSupport implements SessionAware {
    private static final long serialVersionUID = 1L;
    public String pass;
    public String mail;
    public String passC;
    public String name;

    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getMail() {
        return mail;
    }
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getPassC() {
        return passC;
    }
    public void setPassC(String passC) {
        this.passC = passC;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String registrarUsuario() {
        if(passC.contentEquals(pass)) {
            System.out.println("mail: "+mail+"pass: "+pass+"Name: "+name);
            int registro_repetido = ReservacionDAO.insertarUsuario(mail, pass, name);
            if(registro_repetido == -1)//si el registro_repetido es -1 signfica que no se pudo insertar el usuario
                return INPUT;
            return SUCCESS;
        } else
            return ERROR;
    }

    public String registrarAdmin() {
        if(passC.contentEquals(pass)) {
            int registro_repetido = ReservacionDAO.insertarAdmin(mail, pass, name);
            if(registro_repetido == -1)//si el registro_repetido es -1 signfica que no se pudo insertar el usuario
                return INPUT;
            return SUCCESS;
        } else
            return ERROR;
    }

    Map<String, Object> session;

    public void setSession(Map<String, Object> map) {
        this.session = session;
    }
}
