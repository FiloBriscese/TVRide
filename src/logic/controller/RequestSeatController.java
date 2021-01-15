package logic.controller;

import logic.bean.RideBean;
import logic.bean.SearchBean;

public class RequestSeatController {

	public SearchBean searchRides(SearchBean bean) {
		
		// chiedi a DAO di fare ricerca sul DB per i parametri di bean
		// se non ci sono risultati ritorna null
		// else
		// converti le Ride in RideBean poi chiama bean.addResult(RideBean)
		
		// TODO dummy
		RideBean ride0 = new RideBean(42, "Lorenzo", "piazza decemviri", "didattica", "2021-02-04", "08:15");
		RideBean ride1 = new RideBean(73, "Federico", "giulio agricola", "didattica", "2021-02-04", "09:00");
		bean.addResult(ride0);
		bean.addResult(ride1); // delete these
		
		return bean;
	}
	
	public boolean requestSeat(int rideId, int studentId) {
		// dal bean "ottieni" l'entity Ride
		// aggiungi richiesta per studentId a Ride, CONTROLLA IL RITORNO
		// notifica il driver
		// aggiungi alle richieste di passenger Ride.
		
		System.out.println("richiesta da "+studentId+" per la corsa "+rideId);
		
		// ritorna true se andato tutto bene
		return true;
	}
}
