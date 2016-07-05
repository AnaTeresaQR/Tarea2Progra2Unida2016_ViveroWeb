package controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import objectModel.Bill_Model;
import objectModel.UserModel;

/**
 *
 * @author Ana Teresa
 */
public class BillController {

    private Bill_Model billModel;

    public boolean createBillModel(Bill_Model newBill) throws SQLException {
        billModel = new Bill_Model();
        billModel = newBill;
        int id = billModel.createModel();
        if (id != 0) {
            billModel.setId(id);
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<Bill_Model> previewBills(int id) {
        try {
            billModel = new Bill_Model();
            ArrayList<Bill_Model> tempList = new ArrayList<>();
            tempList = billModel.previewBills(id);
            if (tempList.isEmpty()) {
                return null;
            } else {
                return tempList;
            }
        } catch (SQLException ex) {
            return null;
        }
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

    public static void main(String[] args) {
        try {
            BillController billController = new BillController();
            UserModel user = new UserModel(23, "Juan Miguel", "Arias Mejías", "207441378", "84590688", "juan2@gmail.com", "Juan123");
            Bill_Model billUser = new Bill_Model(user, "san ramoooon", "12352634555", "VISA", "23/07", "BCR", "8 pera, 7 manzanas", 200120, 129133);

            System.out.println("boolean: " + billController.createBillModel(billUser));

            System.out.println("" + billUser.getId());
        } catch (SQLException ex) {
            Logger.getLogger(BillController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
