package DataBase;

import java.sql.SQLException;
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

    public void addBill(Bill_Model bill) throws SQLException {

        int idUser = bill.getUser().getId();
        String addressUser = connectionManager.sqlFormat(bill.getAddressUser());
        String numCard = connectionManager.sqlFormat(bill.getNumCard());
        String typeCard = connectionManager.sqlFormat(bill.getTypeCard());
        String creditInstitution = connectionManager.sqlFormat(bill.getCreditInstitution());
        String products = connectionManager.sqlFormat(bill.getProducts());
        double subtotal = bill.getSubtotal();
        double total = bill.getTotal();

        String sql = "INSERT INTO " + BILL_TABLE_NAME + " (id, idUser, addressUser, billDate,"
                + " numCard, typeCard, creditInstitution, products, subtotal, total) values(default, " + idUser
                + ", " + addressUser + ", curdate()" + ", " + numCard + ", " + typeCard + ", " + creditInstitution + ", " + products + ", " + subtotal + ", " + total + ")";

        connectionManager.executeUpdateDB(sql);
    }

    public void deleteBill(int idUser) throws SQLException {
        String sqlID = "DELETE FROM " + BILL_TABLE_NAME + " WHERE idUser= " + idUser;
        connectionManager.executeUpdateDB(sqlID);
    }

}
