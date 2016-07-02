package controller;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import objectModel.ConsultModel;

/**
 *
 * @author Ana Teresa
 */
public class ConsultController {

    private ConsultModel consultModel;

    public boolean createConsultModel(ConsultModel newConsultModel) {
        try {
            consultModel = new ConsultModel();
            consultModel = newConsultModel;
            consultModel.createModel();
            return true;
        } catch (SQLException ex) {
            return false;
        }
    }

    public static void main(String[] args) throws SQLException {
        ConsultController n = new ConsultController();
        n.createConsultModel(new ConsultModel("Ana Teresa Quesada Ramirez",
                "ana.quesada@ucrso.info",
                "Buenas quiero saber cuanto vale una orquidea.... GRACIAS"));
    }
}
