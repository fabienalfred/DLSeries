package tv.entities;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * @author Fabien Alfred
 *
 */

@Entity
@Table(name = "series")
@NamedQueries({ 
		@NamedQuery(name = "Serie.getAll", 
					query = "FROM Serie"),
		@NamedQuery(name = "Serie.getSeriesByName", 
					query = "SELECT s FROM Serie s WHERE s.nom LIKE :name"),
		@NamedQuery(name = "Serie.getSeriesByDay", 
					query = "SELECT s FROM Serie s WHERE s.jour = :day"),
		@NamedQuery(name = "Serie.getSeriesByDate", 
					query = "SELECT s FROM Serie s WHERE s.dateDiff <= :date"),
		@NamedQuery(name = "Serie.getCurrentSeries", 
					query = "SELECT s FROM Serie s WHERE s.dateDiff <= :date"),
		@NamedQuery(name = "Serie.getCurrentSeriesByDay", 
					query = "SELECT s FROM Serie s WHERE s.dateDiff <= :date AND s.jour = :day") })
public class Serie implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idSerie;
	private String nom;
	private String url;
	private String jour;
	private Date dateDiff;

	public int getIdSerie() {
		return idSerie;
	}

	public void setIdSerie(int idSerie) {
		this.idSerie = idSerie;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getJour() {
		return jour;
	}

	public void setJour(String jour) {
		this.jour = jour;
	}

	public Date getDateDiff() {
		return dateDiff;
	}

	public void setDateDiff(Date dateDiff) {
		this.dateDiff = dateDiff;
	}

	@Override
	public String toString() {
		return "Serie [id : " + idSerie + ", nom : " + nom + ", url : " + url + ", jour : " + jour + ", dateDiff : "
				+ dateDiff + "]";
	}
}
