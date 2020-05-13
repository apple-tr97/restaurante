package restaurante.action;


import restaurante.reservacionDAO.*;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private int idReservacion, returnReservacion;
	
	public int getIdReservacion() {
		return idReservacion;
	}

	public void setIdReservacion(int idReservacion) {
		this.idReservacion = idReservacion;
	}	

	public int getReturnReservacion() {
		return returnReservacion;
	}

	public void setReturnReservacion(int returnReservacion) {
		this.returnReservacion = returnReservacion;
	}

	public String execute() throws Exception {
		System.out.println("Entra a delete?");
		System.out.println("Id comentario: "+ idReservacion);
		returnReservacion = ReservacionDAO.eliminar(idReservacion);
		return "DELETE";
	}

}
