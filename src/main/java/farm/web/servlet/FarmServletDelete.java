package farm.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import farm.dao.FarmDao;
import farm.domain.Farm;


/**
 * Servlet implementation class UserServlet
 * Modified by Thomas Sobczak
 */

public class FarmServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FarmServletDelete() {
        super();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		FarmDao farmDao = new FarmDao();
		Farm farm = null;
		if(method.equals("search"))
		{
			try {
				farm = farmDao.findByFarm_id(request.getParameter("farm_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(farm.getFarm_id()!=null){
						//System.out.println(farm);
						request.setAttribute("farm", farm);
						request.getRequestDispatcher("/jsps/farm/farm_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "farm not found");
				request.getRequestDispatcher("/jsps/farm/farm_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				farmDao.delete(request.getParameter("farm_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "farm Deleted");
			request.getRequestDispatcher("/jsps/farm/farm_read_output.jsp").forward(request, response);
		}
	}
}



