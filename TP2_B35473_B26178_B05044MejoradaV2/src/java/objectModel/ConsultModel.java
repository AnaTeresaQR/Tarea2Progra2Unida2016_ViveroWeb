package objectModel;

import DataBase.ConsultTableManager;
import java.sql.SQLException;

public class ConsultModel {

    private String completeName;
    private String email;
    private String message;

    private ConsultTableManager dataBaseManager = new ConsultTableManager();

    public ConsultModel() {
    }

    public ConsultModel(String completeName, String email, String message) {
        this.completeName = completeName;
        this.email = email;
        this.message = message;
    }

    public String getCompleteName() {
        return completeName;
    }

    public void setCompleteName(String completeName) {
        this.completeName = completeName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "ConsultModel{" + "completeName=" + completeName + ", email=" + email + ", message=" + message + '}';
    }

    public void createModel() throws SQLException {
        dataBaseManager.saveConsult(this);
    }

}
