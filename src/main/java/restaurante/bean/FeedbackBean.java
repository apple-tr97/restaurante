package restaurante.bean;


import java.sql.Timestamp;

public class FeedbackBean {
	private int id_feedback; 
	private int id_usuario;
	private String comentario;
	private int star;
	private Timestamp date;
	public int getId_feedback() {
		return id_feedback;
	}
	public void setId_feedback(int id_feedback) {
		this.id_feedback = id_feedback;
	}
	public int getId_usuario() {
		return id_usuario;
	}
	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	

}
