package buy;

import java.util.ArrayList;
import java.util.List;
import xmlProducts.Product;

public class CartManager {

    private static CartManager cart;
    private List<Product> products = new ArrayList<>();
    private List<Integer> quantity = new ArrayList<>();

    public static CartManager getInstance() {
        if (cart == null) {
            cart = new CartManager();
        }
        return cart;
    }

    public boolean addToCart(int amount, Product product) {
        if (!exist(product)) {
            this.quantity.add(amount);
            products.add(product);
            return true;
        } else {
            int index = ProductPosition(product);
            int total = this.quantity.get(index) + amount;
            this.quantity.set(index, total);
            return false;
        }

    }

    public boolean updateProduct(int amount, Product product) {
        int index = ProductPosition(product);
        if (index != -1) {
            this.quantity.set(index, amount);
            return true;
        } else {
            return false;
        }
    }

    public List<Product> getProductsCart() {
        return products;
    }

    public List<Integer> getQuantityCart() {
        return quantity;
    }

    public double getSubTotalProduct(int number) {
        return quantity.get(number) * products.get(number).getPrice();
    }

    public double getSubTotal() {
        double total = 0;
        for (int i = 0; i < products.size(); i++) {
            total += getSubTotalProduct(i);
        }
        return total;
    }

    public double getSendCost() {
        return getSubTotal() * 0.05;
    }

    public double getTotal() {
        return getSubTotal() + getSendCost();
    }

    public boolean exist(Product product) {
        boolean check = false;
        for (int i = 0; i < this.products.size(); i++) {
            if (products.get(i).getName().equals(product.getName())) {
                check = true;
            }
        }
        return check;
    }

    public int ProductPosition(Product product) {
        int position = -1;
        for (int i = 0; i < this.products.size(); i++) {
            if (products.get(i).getName().equals(product.getName())
                    && products.get(i).getLongDescription().equals(product.getLongDescription())) {
                position = i;
            }
        }

        return position;
    }

    public void removeProduct(Product product) {
        int index = ProductPosition(product);
        quantity.remove(index);
        products.remove(index);
    }

    public String getListProducts() {
        String productsList = "";
        for (int i = 0; i < products.size(); i++) {
            productsList += quantity.get(i) + " " + products.get(i).getName() + " " + getSubTotalProduct(i) + "\n";
        }
        return productsList;
    }

    public void clean() {
        products = new ArrayList<>();
        quantity = new ArrayList<>();
    }
}
