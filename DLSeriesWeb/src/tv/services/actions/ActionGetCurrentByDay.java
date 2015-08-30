package tv.services.actions;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tv.dao.SerieDAO;
import tv.entities.Serie;

public class ActionGetCurrentByDay implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, SerieDAO dao) {
		List<Serie> series = dao.getCurrentSeriesByDay(request.getParameter("day"));
		request.setAttribute("series", series);
	}

}
