package controller;

import java.sql.SQLException;
import objectModel.Bill_Model;

/**
 *
 * @author Ana Teresa
 */
public class BillController {

    private Bill_Model billModel;

    public boolean createUserModel(Bill_Model newBill) throws SQLException {
        billModel = new Bill_Model();
        billModel = newBill;
        return billModel.createModel();
    }
}
