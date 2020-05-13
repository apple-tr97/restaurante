package restaurante.action;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import restaurante.bean.*;
import restauranteDAO.*;


import com.opensymphony.xwork2.ActionSupport;

public class ReportAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	ResultSet rs = null;
	
	FeedbackBean bean =null;
	List<FeedbackBean> beanList = null;
	FeedbackDAO admin = new FeedbackDAO();
	public FeedbackBean getBean() {
		return bean;
	}
	public void setBean(FeedbackBean bean) {
		this.bean = bean;
	}
	public List<FeedbackBean> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<FeedbackBean> beanList) {
		this.beanList = beanList;
	}
	
	@Override
	public String execute() throws Exception {
		try {
			beanList = new ArrayList<FeedbackBean>();
			rs = admin.report();
			if (rs != null) {
				while (rs.next()) {
					bean = new FeedbackBean();
					bean.setId_feedback(rs.getInt("id_feedback"));
					bean.setId_usuario(rs.getInt("id_usuario"));
					bean.setComentario(rs.getString("comentario"));
					bean.setStar(rs.getInt("star"));
					bean.setDate(rs.getTimestamp("date"));
					beanList.add(bean);
					
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "REPORT";
	}
	
	

}
