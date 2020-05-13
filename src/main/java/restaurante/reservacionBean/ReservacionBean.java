package restaurante.reservacionBean;

import java.sql.Timestamp;

public class ReservacionBean {
	private String idReservacion, idUsuario, idMesa, fecha, horario, npersonas;

	public String getIdReservacion() {
		return idReservacion;
	}

	public void setIdReservacion(String idReservacion) {
		this.idReservacion = idReservacion;
	}

	public String getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getIdMesa() {
		return idMesa;
	}

	public void setIdMesa(String idMesa) {
		this.idMesa = idMesa;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public String getNpersonas() {
		return npersonas;
	}

	public void setNpersonas(String npersonas) {
		this.npersonas = npersonas;
	}
	
	

}
