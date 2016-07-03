package xmlProducts;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author rosan
 */
public class ProductsListManager {

    public String productsList(List<Product> list) {
        String product = "";
        Iterator<Product> iterator = list.iterator();
        while (iterator.hasNext()) {
            product += iterator.next() + "\n";
        }
        return product;
    }

    public List<Product> getTopProducts(String route) {
        ProductsXmlManager productsXmlManager = new ProductsXmlManager(route);
        List<Product> topProducts = productsXmlManager.getAllProducts();
        Collections.sort(topProducts, new CompareProducts());
        return topProducts;

    }

    public List<Product> getSearch(String route, String word) {
        ProductsXmlManager mx = new ProductsXmlManager(route);

        List<Product> listProducts = mx.getAllProducts();
        List<Product> listSearch = new ArrayList<>();
        
        for (int i = 0; i < listProducts.size(); i++) {
            if (listProducts.get(i).getName().contains(word)
                    || listProducts.get(i).getLongDescription().contains(word)
                    ) {
                listSearch.add(listProducts.get(i));
            }
        }
        return listSearch;
    }

    public static void main(String[] args) {
        ProductsListManager productsListManager = new ProductsListManager();
        List<Product> list = productsListManager.getSearch("products.xml", "flor");

        System.out.println("" + list);
    }

}
