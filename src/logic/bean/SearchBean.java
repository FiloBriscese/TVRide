package logic.bean;

import java.util.List;

import logic.boundary.web.JSPFacade;

import java.util.ArrayList;

public class SearchBean {
	private String from;
	private String to;
	private String date;	// format: "YYYY-MM-DD"
	private String time;	// format: "HH:MM"
	
	private List<RideBean> results;
	
	
	public SearchBean() {
		/* needed for <jsp:useBean> to work */
		this.results = new ArrayList<>();
	}

	public String getFrom() {
		return from;
	}
	
	public void setFrom(String from) {
		this.from = from;
	}
	
	public String getTo() {
		return to;
	}
	
	public void setTo(String to) {
		this.to = to;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public List<RideBean> getResults() {
		return results;
	}
	
	public void setResults(List<RideBean> list) {
		this.results = list;
	}
	
	public void addResult(RideBean rb) {
		this.results.add(rb);
	}

	
	// metodi per JSP
	public boolean search() {
		// TODO controllo data passata
		
		SearchBean result = JSPFacade.getInstance().searchRides(this);

		return result != null;
	}
}
