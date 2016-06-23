/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package xmlProducts;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rosan
 */
public class CartManager {

    private static CartManager cart;
    private final List<Product> products = new ArrayList<>();

    public static CartManager getInstance() {
        if (cart == null) {
            cart = new CartManager();
        }
        return cart;
    }

    public boolean addToCart(Product product) {
       return products.add(product);
    }

    public List<Product> getFromCart() {
        return products;
    }
}
