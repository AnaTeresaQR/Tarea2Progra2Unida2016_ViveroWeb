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
        String data = processNum(2);
        try {
            boolean value = userModel.existEmail(email, data);
            if (value) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            return false;
        }
    }

    public boolean existSchedule(String schedule) {
        userModel = new UserModel();
        String data = processNum(1);
        try {
            boolean value = userModel.existSchedule(schedule, data);
            if (value) {
                return true;
            } else {
                return false;
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
        String data = processNum(2);
        userModel = user.loginUserEmail(data);
        if (userModel != null) {
            user.setId(userModel.getId());
        }
        return userModel;
    }

    public boolean deleteUser(UserModel user) throws SQLException {
        userModel = user;
        String data = processNum(2);
        return userModel.deleteUser(data);
    }

    public String tableContent() throws SQLException {
        return userModel.tableC();
    }

    private String processNum(int num) {
        String variable;
        switch (num) {
            case 1:
                variable = "schedule";
                break;
            case 2:
                variable = "email";
                break;
            default:
                throw new AssertionError();
        }
        return variable;
    }

}
