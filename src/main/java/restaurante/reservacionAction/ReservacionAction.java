package restaurante.reservacionAction;

import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import restaurante.reservacionBean.ReservacionBean;
import restaurante.reservacionDAO.ReservacionDAO;

public class ReservacionAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	public Date fecha;
	public Time horario;
	public int[] mesas = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
	public int npersonas;
	public int mesa;
	public int reserva;
	public int getReserva() {
		return reserva;
	}
	public void setReserva(int reserva) {
		this.reserva = reserva;
	}
	public int getMesa() {
		return mesa;
	}
	public void setMesa(int mesa) {
		this.mesa = mesa;
	}
	public int getNpersonas() {
		return npersonas;
	}
	public void setNpersonas(int npersonas) {
		this.npersonas = npersonas;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public Time getHorario() {
		return horario;
	}
	public void setHorario(Time horario) {
		this.horario = horario;
	}
	private SessionMap<String,Object> sessionMap;
	ResultSet rs = null;
	ReservacionBean reservacionBean = null;
	public List<Integer> reservas;
	List<ReservacionBean> reservacionList = null;
	ReservacionDAO reservacionDAO = new ReservacionDAO();
	public int[] getMesas() {
		return mesas;
	}
	public void setMesas(int[] mesas) {
		this.mesas = mesas;
	}
	public List<ReservacionBean> getReservacionList() {
		return reservacionList;
	}
	public void setReservacionList(List<ReservacionBean> reservacionList) {
		this.reservacionList = reservacionList;
	}
	
	@Override
	public String execute() throws Exception {
		try {
			reservacionList = new ArrayList<ReservacionBean>();
			rs = reservacionDAO.historialReservaciones();
			if (rs != null) {
				while (rs.next()) {
					reservacionBean = new ReservacionBean();
					reservacionBean.setIdReservacion(rs.getString("id_reservacion"));
					reservacionBean.setIdUsuario(rs.getString("id_reservacion"));
					reservacionBean.setIdMesa(rs.getString("id_mesa"));
					reservacionBean.setFecha(rs.getString("fecha"));
					reservacionBean.setHorario(rs.getString("horario"));
					reservacionBean.setNpersonas(rs.getString("npersonas"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "REPORT";
	}

	public String verDisponibilidad() {
		reservas = ReservacionDAO.reservas((java.sql.Date) fecha, horario);
		for (int i = 0; i < reservas.size(); i++){
			mesas[reservas.get(i)-1] = 0;
			if(npersonas < 4 && (i < 4 || (i > 8 && i < 11)) ) {
				mesas[i] = 0;
			}
			if(npersonas > 6 && (i > 3 && i < 9)) {
				mesas[i] = 0;
			}
		}
		return SUCCESS;
	}


	public String reservar() {
		boolean reserva;
		reserva = ReservacionDAO.reservar((Integer)sessionMap.get("id"),mesa, (java.sql.Date) fecha,horario,npersonas);
		if(reserva){
			return SUCCESS;}
		else
			return ERROR;
	}

	public String eliminar() {
		int eliminado = 0;
		try {
			eliminado = reservacionDAO.eliminar(reserva);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(eliminado == 1)
			return SUCCESS;
		else
			return ERROR;
	}

	public void setSession(Map<String, Object> map) {
		sessionMap=(SessionMap)map;
	}

}
