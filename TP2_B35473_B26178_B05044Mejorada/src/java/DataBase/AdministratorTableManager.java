package DataBase;

import java.sql.ResultSet;
import java.sql.SQLException;
import objectModel.Administrator;

/**
 *
 * @author Ana Teresa
 */
public class AdministratorTableManager {

    private final String ADMIN_TABLE_NAME = "administrator";
    private final DataBaseManager connectionManager;

    public AdministratorTableManager() {
        connectionManager = new DataBaseManager();
    }

    public Administrator login(String email, String password) throws SQLException {
        Administrator adminLogin = loginAdmin(email);
        if (adminLogin != null) {
            if (adminLogin.getPassword().equals(password)) {
                return adminLogin;
            }
        }
        return null;
    }

    public Administrator loginAdmin(String email) throws SQLException {
        Administrator admin = null;
        String sql = "SELECT * FROM " + ADMIN_TABLE_NAME + " WHERE email= " + connectionManager.sqlFormat(email);
        ResultSet rs = connectionManager.executeQueryDB(sql);
        while (rs.next()) {
            int idAdmin = (int) rs.getObject("idAdmin");
            String emailAdmin = (String) rs.getObject("email");
            String passwordAdmin = (String) rs.getObject("password");
            return new Administrator(idAdmin, emailAdmin, passwordAdmin);
        }
        rs.close();
        return null;
    }

    public String tableContent() throws SQLException {
        StringBuilder sb = new StringBuilder();
        String sql = "SELECT * FROM " + ADMIN_TABLE_NAME;
        ResultSet rs = connectionManager.executeQueryDB(sql);

        while (rs.next()) {
            sb.append("id: ").append((int) rs.getObject("idAdmin"))
                    .append(" email: ").append((String) rs.getObject("email"))
                    .append(" password: ").append((String) rs.getObject("password"))
                    .append("\n");
        }
        rs.close();
        return sb.toString();
    }
   public static void main(String[] args) throws SQLException {
        AdministratorTableManager a = new AdministratorTableManager();
        Administrator ad = a.login("ana.quesada@ucrso.info", "Admin1");
        
        System.out.println("" + ad.getIdAdmin());
    }
 

}
