package restaurante.reservacionAction;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import restaurante.reservacionBean.ReservacionBean;
import restaurante.reservacionDAO.ReservacionDAO;

public class ReservacionAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	ResultSet rs = null;
	ReservacionBean reservacionBean = null;
	List<ReservacionBean> reservacionList = null;
	ReservacionDAO reservacionDAO = new ReservacionDAO();
	
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
					reservacionList.add(reservacionBean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "REPORT";
	}
	

}
