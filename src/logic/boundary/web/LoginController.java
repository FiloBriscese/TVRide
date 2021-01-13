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
        // Esegui accesso al DB per verificare se username e password sono corretti
            // sql query
            // setuser setpw setname ...

        // Se sono corretti allora restituisci nome e cognome.
        if (bean.getStudentId().matches("\\d{7}")) { // TODO | DUMMY: se studID è un numero di 7 cifre
            bean.setNome("Filo");
            bean.setCognome("Bris");
            bean.setRole("Driver");
        } else {
            bean = null;
        }
        // Altrimenti restituisci null
        return bean;

    }
}
