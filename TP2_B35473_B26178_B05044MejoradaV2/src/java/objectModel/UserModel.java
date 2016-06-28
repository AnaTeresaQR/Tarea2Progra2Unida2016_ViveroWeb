package objectModel;

import DataBase.UserTableManager;
import java.sql.SQLException;

/**
 *
 * @author Ana Teresa
 */
public class UserModel {

    private int id;
    private String userName;
    private String lastName;
    private String schedule;
    private String telephone;
    private String email;
    private String password;

    private UserTableManager dataBaseManager = new UserTableManager();

    public UserModel() {
    }

    public UserModel(String userName, String lastName, String schedule, String telephone, String email, String password) {
        this.userName = userName;
        this.lastName = lastName;
        this.schedule = schedule;
        this.telephone = telephone;
        this.email = email;
        this.password = password;
    }

    public UserModel(int id, String userName, String lastName, String schedule, String telephone, String email, String password) {
        this.id = id;
        this.userName = userName;
        this.lastName = lastName;
        this.schedule = schedule;
        this.telephone = telephone;
        this.email = email;
        this.password = password;
    }

    public boolean existEmail(String email, String data) throws SQLException {
        return dataBaseManager.existEmail(email, data);
    }
    
    public boolean existSchedule(String schedule, String data) throws SQLException {
        return dataBaseManager.existSchedule(schedule, data);
    }

    public boolean createModel() {
        try {
            dataBaseManager.register(this);
            return true;
        } catch (SQLException ex) {
            return false;
        }
    }

    public UserModel loginUserEmail(String data) throws SQLException {
        return dataBaseManager.login(this.getEmail(), this.getPassword(), data);
    }

    public void updateModel() throws SQLException {
        dataBaseManager.editUser(this);
    }

    public boolean deleteUser(String data) throws SQLException {
        return dataBaseManager.deleteUser(this, data);
    }

    public String tableC() throws SQLException {
        return dataBaseManager.tableContent();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
