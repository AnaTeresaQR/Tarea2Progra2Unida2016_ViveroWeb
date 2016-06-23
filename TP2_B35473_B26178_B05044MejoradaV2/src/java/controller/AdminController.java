package controller;

import DataBase.AdministratorTableManager;
import java.sql.SQLException;
import objectModel.Administrator;

/**
 *
 * @author Ana Teresa
 */
public class AdminController {
    
    private Administrator admin;
    
    public AdminController() {
    }
    
    public Administrator loginAdmin(Administrator adminLogin) throws SQLException {
        admin = adminLogin.loginAdmin();
        adminLogin.setIdAdmin(admin.getIdAdmin());
        return admin;
    }
    
    public static void main(String[] args) throws SQLException {
        AdminController adminController = new AdminController();
        Administrator ad = new Administrator();
        ad.setEmail("robert.sanchez@ucrso.info");
        ad.setPassword("Admin3");
        ad = adminController.loginAdmin(ad);
        
        System.out.println("" + ad.getIdAdmin());
    }
}
