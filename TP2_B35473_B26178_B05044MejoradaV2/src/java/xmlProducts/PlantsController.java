package xmlProducts;

public class PlantsController {

    ProductsXmlManager plantsManager = new ProductsXmlManager();

//    public List<Product> getPlantsList() {
//        return plantsManager.getProductsByCategory();
//    }
    public Product getPlantById(String plantId) {
        return plantsManager.getProductById(plantId);
    }

//    public boolean updatePlantPriceById(String plantId, String newName, String newCategory, String newShortDecription, String newLongDescription, String newPrice) {
//        return plantsManager.updatePlantById(plantId, newName, newCategory, newShortDecription, newLongDescription, newPrice);
//    }
//    public boolean addNewPlant(String plantId, String urlPicture, String name, String shortDescription, String longDescription, String price, String category, String plantsSold, String plantsForSell) {
//        return plantsManager.addNewProduct(plantId, urlPicture, name, shortDescription, longDescription, price, category, plantsSold, plantsForSell);
//    }
    public boolean deletePlantById(String plantId) {
        return plantsManager.deleteProductById(plantId);
    }

    public boolean buyPlant(String plantId, String amount) {
        return plantsManager.buyProductById(plantId, amount);
    }
}
