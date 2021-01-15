package logic.boundary.web;

import logic.bean.SearchBean;
import logic.controller.RequestSeatController;

public class JSPFacade {
	/* TODO chiedi a Guglielmo se questa soluzione è plausibile o lui si arrabbia */
	
	private static JSPFacade instance = null;
	
	private JSPFacade() {}
	
	public static JSPFacade getInstance() {
		if(instance==null)
			instance = new JSPFacade();
		return instance;
	}
	
	
	public SearchBean searchRides(SearchBean bean) {
		RequestSeatController controller = new RequestSeatController();
		controller.searchRides(bean);
		return bean;
	}
	
	public boolean requestSeat(int rideId, int studentId) {
		RequestSeatController controller = new RequestSeatController();
		return controller.requestSeat(rideId, studentId);
		
	}
}
