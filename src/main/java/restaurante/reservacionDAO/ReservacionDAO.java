package restaurante.reservacionDAO;

import restaurante.reservacionBean.UserBean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReservacionDAO {
	
	public static Connection myconnection() throws Exception {
		try {

			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/restaurante?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
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
	
	public ResultSet historialReservacionesUsuario(int idUsuario) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM Reservacion WHERE id_usuario ="+ idUsuario;
			
			PreparedStatement ps = myconnection().prepareStatement(sql);
			//ps.setInt(1, idUsuario);
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

	public static UserBean getUsuarioByNameAndPass(String mail, String pass) {
		ResultSet rs = null;
		UserBean usuario = new UserBean();
		String sql = "SELECT * FROM usuario WHERE mail = ? AND password = ?";
		try {
			PreparedStatement ps = myconnection().prepareStatement(sql);
			ps.setString(1, mail);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			if(rs != null) {
				while (rs.next()) {
					usuario.setId_usuario(rs.getInt(1));
					usuario.setNombre(rs.getString(2));
					usuario.setPass(rs.getString(3));
				}
				myconnection().close();
				return usuario;
			}
		} catch (Exception e) {e.printStackTrace();}
		return null;
	}

	public static int insertarUsuario(String mail, String password, String name) {
		String insertQuery = "INSERT INTO usuario (name, mail, password, type)";
		insertQuery += "VALUES(?,?,?,user)";
		int generatedKey = -1;
		try {

			PreparedStatement ps = myconnection().prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, name);
			ps.setString(2, mail);
			ps.setString(3, password);
			ps.execute();
			ResultSet rs = ps.getGeneratedKeys();
			while(rs.next()) {generatedKey = rs.getInt(1);}
			myconnection().close();
			return generatedKey;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	public static int insertarAdmin(String mail, String password, String name) {
		String insertQuery = "INSERT INTO usuario (name, mail, password, type)";
		insertQuery += "VALUES(?,?,?,admin)";
		int generatedKey = -1;
		try {

			PreparedStatement ps = myconnection().prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, name);
			ps.setString(2, mail);
			ps.setString(3, password);
			ps.execute();
			ResultSet rs = ps.getGeneratedKeys();
			while(rs.next()) {generatedKey = rs.getInt(1);}
			myconnection().close();
			return generatedKey;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	public static List<Integer> reservas(Date fecha, Time horario) {
		ResultSet rs = null;
		List<Integer> reservas = new ArrayList<Integer>();
		String sql = "SELECT id_mesa FROM Reservacion WHERE fecha = ? AND horario = ?";
		try {
			PreparedStatement ps = myconnection().prepareStatement(sql);
			ps.setDate(1,fecha);
			ps.setTime(2,horario);
			rs = ps.executeQuery();
			if(rs != null) {
				while(rs.next()) {
					reservas.add(rs.getInt(1));
				}
				myconnection().close();
				return reservas;
			}
		} catch (Exception e) {e.printStackTrace();}
		return null;
	}

	public static boolean reservar(int user, int mesa, Date fecha, Time horario, int npersonas) {
		String sql = "INSERT INTO reservacion(id_usuario,id_mesa,fecha,horario,npersonas) VALUES(?,?,?,?,?)";
		try {
			PreparedStatement statement = myconnection().prepareStatement(sql);
			statement.setInt(1, user);
			statement.setInt(2,mesa);
			statement.setDate(3,fecha);
			statement.setTime(4,horario);
			statement.setInt(5,npersonas);
			statement.execute();
			myconnection().close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static int eliminar(int id_reserva) throws Exception {
		String delete_query = "DELETE FROM reservacion";
		delete_query += "WHERE id_reservacion = ?";
		try {
			PreparedStatement ps = myconnection().prepareStatement(delete_query);
			ps.setInt(1, id_reserva);
			int rowsAffected = ps.executeUpdate();
			return rowsAffected;
		} catch (SQLException e) {
			e.printStackTrace();
			myconnection().close();
			return 0;
		}
	}
}
