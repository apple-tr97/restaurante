package restaurante.reservacionAction;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import restaurante.reservacionBean.ReservacionBean;
import restaurante.reservacionDAO.ReservacionDAO;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class ReservacionUsuarioAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 1L;
	ResultSet rs = null;
	ReservacionBean reservacionBean = null;
	List<ReservacionBean> reservacionList = null;
	ReservacionDAO reservacionDAO = new ReservacionDAO();
	private int id;
	private SessionMap<String,Object> sessionMap;
	
	
	
	public List<ReservacionBean> getReservacionList() {
		return reservacionList;
	}
	public void setReservacionList(List<ReservacionBean> reservacionList) {
		this.reservacionList = reservacionList;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String execute() throws Exception {
		try {
			reservacionList = new ArrayList<ReservacionBean>();
			
			rs = reservacionDAO.historialReservacionesUsuario((Integer)sessionMap.get("id"));
			System.out.println("Id: "+ id);
			if (rs != null) {
				while (rs.next()) {
					reservacionBean = new ReservacionBean();
					reservacionBean.setIdReservacion(rs.getString("id_reservacion"));
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

	public void setSession(Map<String, Object> map) {
        sessionMap=(SessionMap)map;
    }

}
