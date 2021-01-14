package logic.boundary.web;

import logic.bean.LoginBean;

public class LoginController {

    private static LoginController instance = null;

    private LoginController() {}

    public static LoginController getInstance() {
        if(instance==null) {
            instance = new LoginController();
        }

        return instance;
    }

    public LoginBean login(LoginBean bean) {	// TODO
    	/* if login is successful sets the bean with user's info, if not returns null */
    	
        // Esegui accesso al DB per verificare se username e password sono corretti
            // sql query
            // setuser setpw setname ...

        // Se sono corretti allora restituisci nome e cognome.
        if (bean.getStudentId().matches("\\d{7}")) { // TODO | DUMMY: se studID è un numero di 7 cifre
            if(bean.getStudentId().equals("1234567")) {
            	bean.setName("Lollo");
            	bean.setSurname("Pieces");
            	bean.setRole("Driver");
            }
            else {
            	bean.setName("Fede");
            	bean.setSurname("Cats");
            	bean.setRole("Passenger");
            }
        } else {
            bean = null;
        }

        return bean;
    }
}
