package restaurante.action;

import restaurante.bean.UsuarioBean;
import restauranteDAO.FeedbackDAO;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
public class FeedbackAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = -3827439829486925185L;
	// getters and setters...
	private SessionMap<String,Object> sessionMap;
	private UsuarioBean usuario;
	private int id, star;
	private String comentario, msg;
	FeedbackDAO dao = null;
	
	
	
	@Override
	public String execute() throws Exception {
		System.out.println("Entra");
		System.out.println("Star: "+ star);
		System.out.println("Contenido: "+ comentario.toString());
		dao = new FeedbackDAO();
		
		msg = dao.registerFeedback((Integer)sessionMap.get("id"),comentario, star);
		return "REGISTER";
	}
	public UsuarioBean getUsuario() {
		return usuario;
	}
	public void setUsuario(UsuarioBean usuario) {
		this.usuario = usuario;
	}
	public int getId() {
		return id;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
	  public void setSession(Map<String, Object> map) {
	        sessionMap=(SessionMap)map;
	    }
	
	

}
