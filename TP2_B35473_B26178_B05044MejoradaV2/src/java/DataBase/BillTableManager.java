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

}
