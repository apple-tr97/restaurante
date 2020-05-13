package restaurante.reservacionDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ReservacionDAO {
	
	public static Connection myconnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/restaurante?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "014420200116145966");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public ResultSet historialReservaciones() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT id_reservacion, id_usuario ,id_mesa ,fecha , horario, npersonas FROM Reservacion";
			PreparedStatement ps = myconnection().prepareStatement(sql);
			System.out.println("QUERY;"+ ps);
			rs = ps.executeQuery(sql);
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (myconnection() != null) {
				myconnection().close();
			}
		}
	}
	
	public ResultSet historialReservacionesUsuario(String idUsuario) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT id_reservacion,id_mesa ,fecha , horario, npersonas FROM Reservacion WHERE id_usuario = ?";
			PreparedStatement ps = myconnection().prepareStatement(sql);
			ps.setString(1, idUsuario);
			System.out.println("QUERY;"+ ps);
			rs = ps.executeQuery(sql);
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (myconnection() != null) {
				myconnection().close();
			}
		}
	}
}
