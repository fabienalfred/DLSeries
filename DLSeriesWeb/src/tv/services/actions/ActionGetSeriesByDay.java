package tv.services.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tv.dao.SerieDAO;
import tv.entities.Serie;

public class ActionGetSeriesByDay implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, SerieDAO dao) {
		String day = request.getParameter("inputDay");
		List<Serie> series = dao.getSeriesByDay(day);
		request.setAttribute("series", series);
	}

}
