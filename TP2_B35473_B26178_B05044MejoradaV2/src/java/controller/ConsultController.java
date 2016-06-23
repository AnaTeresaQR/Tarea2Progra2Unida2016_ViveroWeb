package controller;

import java.sql.SQLException;
import objectModel.ConsultModel;

/**
 *
 * @author Ana Teresa
 */
public class ConsultController {

    private ConsultModel consultModel;

    public void createConsultModel(ConsultModel newConsultModel) throws SQLException {
        consultModel = new ConsultModel();
        consultModel = newConsultModel;
        consultModel.createModel();
    }

    public static void main(String[] args) throws SQLException {
        ConsultController n = new ConsultController();
        n.createConsultModel(new ConsultModel("Ana Teresa Quesada Ramirez",
                "ana.quesada@ucrso.info",
                "Buenas quiero saber cuanto vale una orquidea.... GRACIAS"));
    }
}
