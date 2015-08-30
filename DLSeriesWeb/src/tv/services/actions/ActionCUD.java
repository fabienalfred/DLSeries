package tv.services.actions;

import java.sql.Date;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import tv.dao.SerieDAO;
import tv.entities.Serie;

public class ActionCUD implements Action {

	@SuppressWarnings("deprecation")
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, SerieDAO dao) {
		int id = Integer.parseInt(request.getParameter("serieId"));
		String nom = request.getParameter("serieName");
		String jour = request.getParameter("serieDay");
		String url = request.getParameter("serieUrl");
		String date = request.getParameter("serieDate");
		Date dateDiff = null;
		if (!date.isEmpty()) {
			String[] fields = date.split("-");
			dateDiff = new Date(Integer.parseInt(fields[0]) - 1900, 
								Integer.parseInt(fields[1]) - 1,
								Integer.parseInt(fields[2]));
		}

		Serie s = new Serie();
		s.setIdSerie(id);
		s.setNom(nom);
		s.setJour(jour);
		s.setUrl(url);
		s.setDateDiff(dateDiff);

		String action = request.getParameter("action");
		switch (action) {
		case "create":
			dao.create(s);
			break;
		case "update":
			dao.update(s);
			break;
		case "delete":
			dao.delete(id);
			break;
		default:
			break;
		}
	}

}
