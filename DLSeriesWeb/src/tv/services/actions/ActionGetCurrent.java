package tv.services.actions;

import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tv.dao.SerieDAO;
import tv.entities.Serie;

public class ActionGetCurrent implements Action {

	@EJB private SerieDAO dao;
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, SerieDAO dao) {
		List<Serie> series = dao.getCurrentSeries();
		request.setAttribute("series", series);
	}

}
