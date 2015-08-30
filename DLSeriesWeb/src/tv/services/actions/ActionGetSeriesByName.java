package tv.services.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tv.dao.SerieDAO;
import tv.entities.Serie;

public class ActionGetSeriesByName implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, SerieDAO dao) {
		String serieName = request.getParameter("inputName");
		List<Serie> series = dao.getSeriesByName(serieName);
		request.setAttribute("series", series);
	}

}
