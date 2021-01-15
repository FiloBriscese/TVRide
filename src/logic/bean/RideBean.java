package logic.bean;

import logic.boundary.web.JSPFacade;

public class RideBean {
	
	private int rideId;
	private String owner;
	private String source;
	private String destination;
	private String date;
	private String time;

	public RideBean() {
		/* needed for <jsp:useBean> to work */
	}
	
	public RideBean(int rideId, String owner, String source, String destination, String date, String time) {
		this.rideId = rideId;
		this.owner = owner;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.time = time;
	}
	
	public int getRideId() {
		return rideId;
	}
	
	public void setRideId(int rideId) {
		this.rideId = rideId;
	}
	
	public String getOwner() {
		return owner;
	}
	
	public void setOwner(String owner) {
		this.owner = owner;
	}
	
	public String getSource() {
		return source;
	}
	
	public void setSource(String source) {
		this.source = source;
	}
	
	public String getDestination() {
		return destination;
	}
	
	public void setDestination(String destination) {
		this.destination = destination;
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

	
	// JSP utility method
	public boolean sendRequest(String userId) {
		
		return JSPFacade.getInstance().requestSeat(this.rideId, Integer.parseInt(userId));

	}
}
