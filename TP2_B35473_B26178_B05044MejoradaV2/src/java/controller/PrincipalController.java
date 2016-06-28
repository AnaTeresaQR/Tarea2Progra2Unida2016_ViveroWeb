package controller;

import java.sql.SQLException;
import objectModel.UserModel;

/**
 *
 * @author Ana Teresa
 */
public class PrincipalController {

    private UserModel userModel;

    public boolean existEmail(String email) {
        userModel = new UserModel();
        try {
            boolean value = userModel.existEmail(email);
            if (value) {
                return true;
            } else {
                return true;
            }
        } catch (SQLException ex) {
            return false;
        }
    }

    public boolean createUserModel(UserModel newUserModel) throws SQLException {
        userModel = new UserModel();
        userModel = newUserModel;
        return userModel.createModel();
    }

    public boolean updateUser(UserModel userToUpdate) {
        try {
            userModel = userToUpdate;
            userModel.updateModel();
            return true;
        } catch (SQLException ex) {
            return false;
        }
    }

    public UserModel loginUser(UserModel user) throws SQLException {
        userModel = user.loginUser();
        if (userModel != null) {
            user.setId(userModel.getId());
        }
        return userModel;
    }

    public boolean deleteUser(UserModel user) throws SQLException {
        userModel = user;
        return userModel.deleteUser();
    }

    public String tableContent() throws SQLException {
        return userModel.tableC();
    }

}
