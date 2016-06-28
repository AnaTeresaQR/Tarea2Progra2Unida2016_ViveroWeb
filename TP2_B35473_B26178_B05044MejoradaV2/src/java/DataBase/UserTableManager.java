package DataBase;

import java.sql.ResultSet;
import java.sql.SQLException;
import objectModel.UserModel;

/**
 *
 * @author Ana Teresa
 */
public class UserTableManager {

    private final String USER_TABLE_NAME = "registeruser"; // nombre de la tabla de usuarios
    private final DataBaseManager connectionManager;

    public UserTableManager() {
        connectionManager = new DataBaseManager();
    }

    public void register(UserModel user) throws SQLException {

        String name = connectionManager.sqlFormat(user.getUserName());
        String lastName = connectionManager.sqlFormat(user.getLastName());
        String schedule = connectionManager.sqlFormat(user.getSchedule());
        String telephone = connectionManager.sqlFormat(user.getTelephone());
        String email = connectionManager.sqlFormat(user.getEmail());
        String password = connectionManager.sqlFormat(user.getPassword());

        String sql = "INSERT INTO " + USER_TABLE_NAME + " (id, username, lastName, schedule, telephone, email, password) values(default, "
                + name + ", " + lastName + ", " + schedule + ", " + telephone + ", " + email + ", " + password + ")";

        connectionManager.executeUpdateDB(sql);
    }

    public UserModel login(String email, String password, String data) throws SQLException {
        UserModel userLogin = searchUser(email, data);

        if (userLogin != null) {
            if (userLogin.getPassword().equals(password)) {
                return userLogin;
            }
        }
        return null;
    }

    public boolean existEmail(String email, String data) throws SQLException {
        UserModel userLogin = searchUser(email, data);
        if (userLogin != null) {
            return true;
        }
        return false;
    }

    public boolean existSchedule(String schedule, String data) throws SQLException {
        UserModel userLogin = searchUser(schedule, data);
        if (userLogin != null) {
            return true;
        }
        return false;
    }

    private UserModel searchUser(String info, String data) throws SQLException {
        UserModel user;
        if (info == null && !info.equals("")) {
            return null;
        }

        String sql = "SELECT * FROM " + USER_TABLE_NAME + " WHERE " + data + " = " + connectionManager.sqlFormat(info);
        ResultSet rs = connectionManager.executeQueryDB(sql);

        while (rs.next()) {
            int idU = (int) rs.getObject("id");
            String userNameU = (String) rs.getObject("userName");
            String lastNameU = (String) rs.getObject("lastName");
            String scheduleU = (String) rs.getObject("schedule");
            String telephoneU = (String) rs.getObject("telephone");
            String emailU = (String) rs.getObject("email");
            String passwordU = (String) rs.getObject("password");
            user = new UserModel(idU, userNameU, lastNameU, scheduleU, telephoneU, emailU, passwordU);
            return user;
        }

        rs.close();
        return null;
    }

    public void editUser(UserModel user) throws SQLException {
        int id = user.getId();
        String nameNew = connectionManager.sqlFormat(user.getUserName());
        String lastNameNew = connectionManager.sqlFormat(user.getLastName());
        String scheduleNew = connectionManager.sqlFormat(user.getSchedule());
        String telephonNew = connectionManager.sqlFormat(user.getTelephone());
        String emailNew = connectionManager.sqlFormat(user.getEmail());
        String passwordNew = connectionManager.sqlFormat(user.getPassword());

        String sql = "UPDATE " + USER_TABLE_NAME
                + " SET userName= " + nameNew
                + ", lastName= " + lastNameNew
                + ", schedule= " + scheduleNew
                + ", telephone= " + telephonNew
                + ", email= " + emailNew
                + ", password= " + passwordNew
                + " WHERE id= " + id;

        connectionManager.executeUpdateDB(sql);
    }

    public boolean deleteUser(UserModel user, String data) throws SQLException {
        BillTableManager connectionBill = new BillTableManager();
        UserModel userLogin = searchUser(user.getEmail(), data);

        if (userLogin != null) {
            if (userLogin.getPassword().equals(user.getPassword())) {

                connectionBill.deleteBill(user.getId());

                String sqlD = "DELETE FROM " + USER_TABLE_NAME + " WHERE id= " + user.getId();
                connectionManager.executeUpdateDB(sqlD);
                return true;
            }
        }
        return false;
    }

    public String tableContent() throws SQLException {
        StringBuilder sb = new StringBuilder();
        String sql = "SELECT * FROM " + USER_TABLE_NAME;
        ResultSet rs = connectionManager.executeQueryDB(sql);

        while (rs.next()) {
            sb.append("id: ").append((int) rs.getObject("id"))
                    .append(" userName: ").append((String) rs.getObject("userName"))
                    .append(" lastName: ").append((String) rs.getObject("lastName"))
                    .append(" schedule: ").append((String) rs.getObject("schedule"))
                    .append(" telephone: ").append((String) rs.getObject("telephone"))
                    .append(" email: ").append((String) rs.getObject("email"))
                    .append(" password: ").append((String) rs.getObject("password"))
                    .append("\n");
        }
        rs.close();
        return sb.toString();
    }
}
