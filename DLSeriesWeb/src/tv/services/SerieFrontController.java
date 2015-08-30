package tv.services;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tv.dao.SerieDAO;
import tv.entities.Serie;
import tv.services.actions.Action;
import tv.services.actions.ActionFactory;

/**
 * Servlet implementation class SerieFrontController
 */
@WebServlet("/SerieFrontController")
public class SerieFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private SerieDAO dao;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cde = request.getParameter("cde");
		Action action = ActionFactory.getAction(cde);
		action.execute(request, response, dao);
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
