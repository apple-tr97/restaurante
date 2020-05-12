package restauranteDAO;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import restaurante.bean.UsuarioBean;
import restaurante.bean.FeedbackBean;;


public class FeedbackDAO {
	
	private UsuarioBean usuario;
	private FeedbackBean feedback;
	


	public FeedbackBean getFeedback() {
		return feedback;
	}

	public void setFeedback(FeedbackBean feedback) {
		this.feedback = feedback;
	}

	public UsuarioBean getUsuario() {
		return usuario;
	}
	
	public static Connection myconnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/restaurante?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public String registerFeedback(int id_usuario, String comentario, int star) throws SQLException, Exception {
		try {
			String sql = "INSERT INTO Feedback (id_usuario, comentario, star, date)";
	        sql+="VALUES (?, NOW(), ?, ?)";
			PreparedStatement ps = myconnection().prepareStatement(sql);
			//System.out.println("Id usuario: "+ usuario.getId_usuario());
			ps.setInt(1, id_usuario);
			ps.setString(2, comentario);
			ps.setInt(3, star);
			
			ps.executeUpdate();
			return "Feedback Registration Successful";
		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();
		} finally {
			if (myconnection() != null) {
				myconnection().close();
			}
		}
	}
	
	
	
}