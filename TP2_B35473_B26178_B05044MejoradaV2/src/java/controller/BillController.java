package controller;

import java.sql.SQLException;
import objectModel.Bill_Model;

/**
 *
 * @author Ana Teresa
 */
public class BillController {

    private Bill_Model billModel;

    public boolean createBillModel(Bill_Model newBill) throws SQLException {
        billModel = new Bill_Model();
        billModel = newBill;
      //  System.out.println("BILLCONtroller = " + billModel.toString() + billModel.getUser().getId());
        return billModel.createModel();
    }

    public boolean validateInputs(String typeCard, String entityCard,
            String provinceSelect, String cantonSelect, String districtSelect,
            String completeLocation, String numCard, String expDateCard) {

        if (!typeCard.equals("") || !entityCard.equals("") || !provinceSelect.equals("")
                || !cantonSelect.equals("") || !districtSelect.equals("")
                || !completeLocation.equals("") || !numCard.equals("") || !expDateCard.equals("")) {
            return true;
        } else {
            return false;
        }
    }
}
