package objectModel;

import DataBase.BillTableManager;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ana Teresa
 */
public class Bill_Model {

    private int id;
    private UserModel user;
    private String addressUser;
    private Date billDate;
    private String numCard;
    private String typeCard;
    private String creditInstitution;
    private String products;
    private double subtotal;
    private double total;

    private BillTableManager dataBaseManager = new BillTableManager();

    public Bill_Model() {
    }

    public Bill_Model(int id, UserModel user, String addressUser, Date billDate, String numCard, String typeCard, String creditInstitution, String products, double subtotal, double total) {
        this.id = id;
        this.user = user;
        this.addressUser = addressUser;
        this.billDate = billDate;
        this.numCard = numCard;
        this.typeCard = typeCard;
        this.creditInstitution = creditInstitution;
        this.products = products;
        this.subtotal = subtotal;
        this.total = total;
    }

    public Bill_Model(UserModel user, String addressUser, String numCard, String typeCard, String creditInstitution, String products, double subtotal, double total) {
        this.user = user;
        this.addressUser = addressUser;
        this.numCard = numCard;
        this.typeCard = typeCard;
        this.creditInstitution = creditInstitution;
        this.products = products;
        this.subtotal = subtotal;
        this.total = total;
    }

    public boolean createModel() {
        try {
            dataBaseManager.addBill(this);
            return true;
        } catch (SQLException ex) {
            return false;
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UserModel getUser() {
        return user;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }

    public String getAddressUser() {
        return addressUser;
    }

    public void setAddressUser(String addressUser) {
        this.addressUser = addressUser;
    }

    public Date getBillDate() {
        return billDate;
    }

    public void setBillDate(Date billDate) {
        this.billDate = billDate;
    }

    public String getNumCard() {
        return numCard;
    }

    public void setNumCard(String numCard) {
        this.numCard = numCard;
    }

    public String getTypeCard() {
        return typeCard;
    }

    public void setTypeCard(String typeCard) {
        this.typeCard = typeCard;
    }

    public String getCreditInstitution() {
        return creditInstitution;
    }

    public void setCreditInstitution(String creditInstitution) {
        this.creditInstitution = creditInstitution;
    }

    public String getProducts() {
        return products;
    }

    public void setProducts(String products) {
        this.products = products;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

}
