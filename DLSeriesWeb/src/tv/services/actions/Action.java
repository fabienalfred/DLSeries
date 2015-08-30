package tv.services.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tv.dao.SerieDAO;

public interface Action {

	void execute(HttpServletRequest request, HttpServletResponse response, SerieDAO dao);

}
