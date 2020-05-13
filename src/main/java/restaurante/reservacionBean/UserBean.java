package restaurante.reservacionBean;

public class UserBean {
    public UserBean() {}
    public UserBean(int id_usuario, String nombre, String pass, String type, String mail) {
        super();
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.pass = pass;
        this.type = type;
        this.mail = mail;
    }
    private int id_usuario;
    private String nombre;
    private String pass;
    private String type;
    private String mail;
    public String getMail() {
        return mail;
    }
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    public int getId_usuario() {
        return id_usuario;
    }
    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
}
