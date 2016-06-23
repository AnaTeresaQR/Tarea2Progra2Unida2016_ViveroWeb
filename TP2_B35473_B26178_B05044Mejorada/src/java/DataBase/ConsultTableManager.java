package DataBase;

import java.sql.SQLException;
import objectModel.ConsultModel;

/**
 *
 * @author Ana Teresa
 */
public class ConsultTableManager {

    private final String CONSULT_TABLE_NAME = "consult"; // nombre de la tabla de usuarios
    private final DataBaseManager connectionManager;

    public ConsultTableManager() {
        connectionManager = new DataBaseManager();
    }

    public void saveConsult(ConsultModel consult) throws SQLException {

        String completeName = connectionManager.sqlFormat(consult.getCompleteName());
        String email = connectionManager.sqlFormat(consult.getEmail());
        String message = connectionManager.sqlFormat(consult.getMessage());

        String sql = "INSERT INTO " + CONSULT_TABLE_NAME + " (id, completeName, email, message) values(default, "
                + completeName + ", " + email + ", " + message + ")";

        connectionManager.executeUpdateDB(sql);
    }

}
