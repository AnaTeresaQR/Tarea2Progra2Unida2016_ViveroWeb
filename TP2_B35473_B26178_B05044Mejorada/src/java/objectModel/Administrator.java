package objectModel;

import DataBase.AdministratorTableManager;
import java.sql.SQLException;

/**
 *
 * @author Ana Teresa
 */
public class Administrator {

    private int idAdmin;
    private String email;
    private String password;

    private final AdministratorTableManager administratorTableManager = new AdministratorTableManager();

    public Administrator() {
    }

    public Administrator(int idAdmin, String email, String password) {
        this.idAdmin = idAdmin;
        this.email = email;
        this.password = password;
    }

    public Administrator loginAdmin() throws SQLException {
        return administratorTableManager.login(this.getEmail(), this.getPassword());
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
