/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xmlProducts;

/**
 *
 * @author rosan
 */
public class Product {

    private String name;
    private String prodcutId;
    private String urlPicture1;
    private String urlPicture2;
    private String urlPicture3;
    private String category;
    private String shortDescription;
    private String longDescription;
    private double price;
    private int productsSold;
    private int productsForSell;

    public Product(String name, String plantId, String urlPicture1, String urlPicture2, String urlPicture3, String category, String shortDescription, String longDescription, double price, int plantsSold, int plantsForSell) {
        this.name = name;
        this.prodcutId = plantId;
        this.urlPicture1 = urlPicture1;
        this.urlPicture2 = urlPicture2;
        this.urlPicture3 = urlPicture3;
        this.category = category;
        this.shortDescription = shortDescription;
        this.longDescription = longDescription;
        this.price = price;
        this.productsSold = plantsSold;
        this.productsForSell = plantsForSell;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProductId() {
        return prodcutId;
    }

    public void setProductId(String plantId) {
        this.prodcutId = plantId;
    }

    public String getUrlPicture1() {
        return urlPicture1;
    }

    public void setUrlPicture1(String urlPicture1) {
        this.urlPicture1 = urlPicture1;
    }

    public String getUrlPicture2() {
        return urlPicture2;
    }

    public void setUrlPicture2(String urlPicture2) {
        this.urlPicture2 = urlPicture2;
    }

    public String getUrlPicture3() {
        return urlPicture3;
    }

    public void setUrlPicture3(String urlPicture3) {
        this.urlPicture3 = urlPicture3;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getLongDescription() {
        return longDescription;
    }

    public void setLongDescription(String longDescription) {
        this.longDescription = longDescription;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getProductSold() {
        return productsSold;
    }

    public void setProductSold(int plantsSold) {
        this.productsSold = plantsSold;
    }

    public int getProductForSell() {
        return productsForSell;
    }

    public void setProductForSell(int plantsForSell) {
        this.productsForSell = plantsForSell;
    }

    @Override
    public String toString() {
        return "Nombre: " + name + "\nId: " + prodcutId + "\nCategoria: " + category
                + "\nDescripcion corta: " + shortDescription + "\nDescripcion larga: "
                + longDescription + "\nprecio; " + price + "Cantidad vendida: " + productsSold;
    }

}
