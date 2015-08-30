package tv.dao;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.rmi.CORBA.UtilDelegate;

import com.sun.corba.se.impl.javax.rmi.CORBA.Util;

import tv.entities.Serie;

/**
 * @author Fabien Alfred
 *
 */

@Singleton
public class SerieDAO {

	@PersistenceContext(unitName="tv")
	private EntityManager em;
	
	public Serie create(Serie s) {
		em.persist(s);
		return s;
	}
	
	public void delete(int id) {
		Serie s = getSerieById(id);
		em.remove(s);
	}

	public void update(Serie s) {
		em.merge(s);
	}
	
	public Serie getSerieById(int id) {
		Serie s = em.find(Serie.class, id);
		return s;
	}
	
	@SuppressWarnings("unchecked")
	public List<Serie> getAll() {
		return em.createNamedQuery("Serie.getAll")
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Serie> getSeriesByName(String nom) {
		return em.createNamedQuery("Serie.getSeriesByName")
				.setParameter("name", nom+"%")
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Serie> getSeriesByDay(String day) {
		return em.createNamedQuery("Serie.getSeriesByDay")
				.setParameter("day", day)
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Serie> getSeriesByDate(Date date) {
		return em.createNamedQuery("Serie.getSeriesByDate")
				.setParameter("date", date)
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Serie> getCurrentSeries() {
		return em.createNamedQuery("Serie.getCurrentSeries")
				.setParameter("date", new Date(Calendar.getInstance().getTime().getTime()))
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Serie> getCurrentSeriesByDay(String day) {
		return em.createNamedQuery("Serie.getCurrentSeriesByDay")
				.setParameter("date", new Date(Calendar.getInstance().getTime().getTime()))
				.setParameter("day", day)
				.getResultList();
	}
}
