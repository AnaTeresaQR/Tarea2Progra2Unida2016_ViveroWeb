package DataBase;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import objectModel.Bill_Model;

/**
 *
 * @author Ana Teresa
 */
public class BillTableManager {

    private final String BILL_TABLE_NAME = "bill"; // nombre de la tabla de usuarios
    private final DataBaseManager connectionManager;

    public BillTableManager() {
        this.connectionManager = new DataBaseManager();
    }

    public Bill_Model addBill(Bill_Model bill) throws SQLException {

        int idUser = bill.getUser().getId();
        String addressUser = connectionManager.sqlFormat(bill.getAddressUser());
        String numCard = connectionManager.sqlFormat(bill.getNumCard());
        String typeCard = connectionManager.sqlFormat(bill.getTypeCard());
        String creditInstitution = connectionManager.sqlFormat(bill.getCreditInstitution());
        String dateExp = connectionManager.sqlFormat(bill.getDateExp());
        String products = connectionManager.sqlFormat(bill.getProducts());
        double subtotal = bill.getSubtotal();
        double total = bill.getTotal();

        String sql = "INSERT INTO " + BILL_TABLE_NAME + " (id, idUser, addressUser, billDate,"
                + " numCard, typeCard, dateExp , creditInstitution, products, subtotal, total) values(default, " + idUser
                + ", " + addressUser + ", curdate()" + ", " + numCard + ", " + typeCard + ", " + dateExp + ", " + creditInstitution + ", " + products + ", " + subtotal + ", " + total + ")";

        connectionManager.executeUpdateDB(sql);
        bill.setId(connectionManager.scopeIdentityBill());
        return bill;
    }

    public void deleteBill(int idUser) throws SQLException {
        String sqlID = "DELETE FROM " + BILL_TABLE_NAME + " WHERE idUser= " + idUser;
        connectionManager.executeUpdateDB(sqlID);
    }

    public ArrayList<Bill_Model> getPreviewFromUserID(int id) throws SQLException {
        if (id > 0) {
            ArrayList<Bill_Model> listBills = new ArrayList<>();
            String sql = "SELECT id, billDate, products FROM " + BILL_TABLE_NAME + " WHERE idUser = " + id;
            ResultSet rs = connectionManager.executeQueryDB(sql);

            while (rs.next()) {
                int idB = (int) rs.getObject("id");
                Date billDateB = (Date) rs.getObject("billDate");
                String productsB = (String) rs.getObject("products");
                Bill_Model billByid = new Bill_Model(idB, (java.sql.Date) billDateB, productsB);
                listBills.add(billByid);
            }

            rs.close();
            return listBills;
        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        BillTableManager bill = new BillTableManager();
        ArrayList<Bill_Model> list = bill.getPreviewFromUserID(21);
        String forw = "";
        for (int i = 0; i < list.size(); i++) {
            Bill_Model temp = list.get(i);
            forw += temp.getId() + "\n";
        }
        System.out.println("" + forw);
    }

}
