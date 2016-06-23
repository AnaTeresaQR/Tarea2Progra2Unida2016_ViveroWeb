package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Clase encargada del manejo de la conexión con la base de datos.
 *
 * @author Ana Teresa Quesada Ramírez
 */
public class DataBaseManager {

    public DataBaseManager() {
        loadDriver();
    }

    private void loadDriver() {
        try {

            Class.forName("com.mysql.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            System.err.println(e);
        }
    }

    public Connection connectDataBase() {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/dbregisterdata", "root", "root");
        } catch (SQLException e) {
            System.err.println(e);
        }
        return c;
    }

    public Statement getStatement() {

        Statement st = null;

        try {

            Connection c = connectDataBase();
            st = c.createStatement();

        } catch (SQLException e) {
            System.err.println(e);
        }

        return st;
    }

    public String sqlFormat(String value) {
        return "\"" + value + "\"";
    }

    public void executeUpdateDB(String sql) throws SQLException {
        Statement st = getStatement();
        st.executeUpdate(sql);
    }

    public ResultSet executeQueryDB(String sql) throws SQLException {
        Statement st = getStatement();
        ResultSet rs = st.executeQuery(sql);
        return rs;
    }

}
