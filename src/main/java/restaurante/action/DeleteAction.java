package restaurante.action;


import restaurante.reservacionDAO.*;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{
	private String id_comentario, msg;

	public String getId_comentario() {
		return id_comentario;
	}

	public void setId_comentario(String id_comentario) {
		this.id_comentario = id_comentario;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String execute() throws Exception {
		System.out.println("Entra a delete?");
		ReservacionDAO dao = new ReservacionDAO();
		System.out.println("Id comentario: "+ id_comentario.toString());
		msg = dao.eliminar(id_comentario);
		return "DELETE";
	}

}
