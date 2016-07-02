package xmlProducts;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class ProductsXmlManager {

    private String xmlFile = "products.xml";
    private FileInputStream file;
    private DocumentBuilderFactory builderFactory;
    private DocumentBuilder builder;
    private Document xmlDocument;
    private XPath xPath;

    public ProductsXmlManager() {
        loadFile();
    }

    public ProductsXmlManager(String xmlFile) {
        this.xmlFile = xmlFile;
        loadFile();
    }

    private void loadFile() {
        try {
            file = new FileInputStream(new File(xmlFile));
            builderFactory = DocumentBuilderFactory.newInstance();
            builder = builderFactory.newDocumentBuilder();
            xmlDocument = builder.parse(file);
            xPath = XPathFactory.newInstance().newXPath();
        } catch (ParserConfigurationException ex) {
            System.err.println("loadFile method, ParserConfigurationException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (SAXException ex) {
            System.err.println("loadFile method, SAXException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (IOException ex) {
            System.err.println("loadFile method, IOException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
    }

    public List<Product> getProductsByCategory(String fountCategory) {
        try {
            List<Product> plants = new ArrayList<>();

            String expression = String.format("/products/product[@category='%s']", fountCategory);

            NodeList nodeList = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);

            for (int i = 0; i < nodeList.getLength(); i++) {

                Node node = nodeList.item(i);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    String category = element.getAttribute("category");

                    String productId = element.getAttribute("productId");

                    String name = element.getElementsByTagName("name")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String shortDecription = element.getElementsByTagName("shortDescription").item(0)
                            .getChildNodes().item(0).getNodeValue();
                    String longDescription = element.getElementsByTagName("longDescription")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    double price = Double.parseDouble(element
                            .getElementsByTagName("price").item(0).getChildNodes()
                            .item(0).getNodeValue());
                    String urlPicture1 = element.getElementsByTagName("urlPicture1")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlPicture2 = element.getElementsByTagName("urlPicture2")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlPicture3 = element.getElementsByTagName("urlPicture3")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    int plantsSold = Integer.parseInt(element
                            .getElementsByTagName("productSold").item(0).getChildNodes()
                            .item(0).getNodeValue());
                    int plantsForSell = Integer.parseInt(element
                            .getElementsByTagName("productForSell").item(0).getChildNodes()
                            .item(0).getNodeValue());

                    if (plantsForSell > 0) {
                        plants.add(new Product(name, productId, urlPicture1, urlPicture2, urlPicture3, category, shortDecription, longDescription, price, plantsSold, plantsForSell));
                    }
                }
            }
            return plants;

        } catch (XPathExpressionException ex) {
            System.err.println("getAllPlants method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public Product getProductById(String productId) {
        try {
            Product plant = null;
            String expression = String.format("/products/product[@productId='%s']", productId);

            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    String category = element.getAttribute("category");

                    String name = element.getElementsByTagName("name")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String shortDecription = element.getElementsByTagName("shortDescription").item(0)
                            .getChildNodes().item(0).getNodeValue();
                    String longDescription = element.getElementsByTagName("longDescription")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    double price = Double.parseDouble(element
                            .getElementsByTagName("price").item(0).getChildNodes()
                            .item(0).getNodeValue());
                    String urlPicture1 = element.getElementsByTagName("urlPicture1")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlPicture2 = element.getElementsByTagName("urlPicture2")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlPicture3 = element.getElementsByTagName("urlPicture3")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    int plantsSold = Integer.parseInt(element
                            .getElementsByTagName("productSold").item(0).getChildNodes()
                            .item(0).getNodeValue());
                    int plantsForSell = Integer.parseInt(element
                            .getElementsByTagName("productForSell").item(0).getChildNodes()
                            .item(0).getNodeValue());

                    plant = new Product(name, productId, urlPicture1, urlPicture2, urlPicture3, category, shortDecription, longDescription, price, plantsSold, plantsForSell);
                }
            }
            return plant;
        } catch (XPathExpressionException ex) {
            System.err.println("getPlantById method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public boolean updatePlantById(String productId, String newName, String newCategory, String newShortDecription, String newLongDescription, String newPrice) {
        try {
            String expression = String.format("/products/product[@productId='%s']", productId);
            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    element.getElementsByTagName("name").item(0).getChildNodes().item(0).setNodeValue(newName);
                    element.setAttribute("category", newCategory);
                    element.getElementsByTagName("price").item(0).getChildNodes().item(0).setNodeValue(newPrice);
                    element.getElementsByTagName("shortDescription").item(0).getChildNodes().item(0).setNodeValue(newShortDecription);
                    element.getElementsByTagName("longDescription").item(0).getChildNodes().item(0).setNodeValue(newLongDescription);
                    TransformerFactory transformerFactory = TransformerFactory.newInstance();

                    Transformer transformer = transformerFactory.newTransformer();
                    DOMSource domSource = new DOMSource(xmlDocument);

                    StreamResult streamResult = new StreamResult(new File(xmlFile));
                    transformer.transform(domSource, streamResult);
                }
                return true;
            }
        } catch (XPathExpressionException ex) {
            System.err.println("updatPricePlantById method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (TransformerException ex) {
            System.err.println("updatPricePlantById method, TransformerException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return false;
    }

    public boolean buyProductById(String productId, String amountProductsSold) {
        try {
            String expression = String.format("/products/product[@productId='%s']", productId);
            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    int plantsSold = Integer.parseInt(element
                            .getElementsByTagName("productSold").item(0).getChildNodes()
                            .item(0).getNodeValue());

                    int plantsForSell = Integer.parseInt(element
                            .getElementsByTagName("productForSell").item(0).getChildNodes()
                            .item(0).getNodeValue());

                    if (plantsForSell >= Integer.parseInt(amountProductsSold)) {
                        plantsSold += Integer.parseInt(amountProductsSold);
                        plantsForSell -= Integer.parseInt(amountProductsSold);
                        String newPlantsSold = plantsSold + "";
                        String newPlantsForSell = plantsForSell + "";

                        element.getElementsByTagName("productSold").item(0).getChildNodes().item(0).setNodeValue(newPlantsSold);
                        element.getElementsByTagName("productForSell").item(0).getChildNodes().item(0).setNodeValue(newPlantsForSell);

                        TransformerFactory transformerFactory = TransformerFactory.newInstance();
                        Transformer transformer = transformerFactory.newTransformer();
                        DOMSource domSource = new DOMSource(xmlDocument);

                        StreamResult streamResult = new StreamResult(new File(xmlFile));
                        transformer.transform(domSource, streamResult);
                        return true;
                    }
                }
                return false;
            }
        } catch (XPathExpressionException ex) {
            System.err.println("buyProduct method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (TransformerException ex) {
            System.err.println("buyProduct method, TransformerException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return false;
    }

    public List<Product> getAllProducts() {
        try {
            List<Product> products = new ArrayList<>();
            String expression = "/products/product";

            NodeList nodeList = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);

            for (int i = 0; i < nodeList.getLength(); i++) {

                Node node = nodeList.item(i);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    String category = element.getAttribute("category");

                    String plantId = element.getAttribute("productId");

                    String name = element.getElementsByTagName("name")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String shortDecription = element.getElementsByTagName("shortDescription").item(0)
                            .getChildNodes().item(0).getNodeValue();
                    String longDescription = element.getElementsByTagName("longDescription")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    double price = Double.parseDouble(element
                            .getElementsByTagName("price").item(0).getChildNodes()
                            .item(0).getNodeValue());
                    String urlPicture1 = element.getElementsByTagName("urlPicture1")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlPicture2 = element.getElementsByTagName("urlPicture2")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    
                    String urlPicture3 = element.getElementsByTagName("urlPicture3")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    
                    int productsSold = Integer.parseInt(element
                            .getElementsByTagName("productSold").item(0).getChildNodes()
                            .item(0).getNodeValue());
                    int productsForSell = Integer.parseInt(element
                            .getElementsByTagName("productForSell").item(0).getChildNodes()
                            .item(0).getNodeValue());
                    
                    if (productsForSell > 0) {
                        products.add(new Product(name, plantId, urlPicture1, urlPicture2, urlPicture3, category, shortDecription, longDescription, price, productsSold, productsForSell));
                    }

                }
            }
            return products;

        } catch (XPathExpressionException ex) {
            System.err.println("getAllProducts method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public boolean addNewProduct(String productId, String urlPicture1, String urlPicture2, String urlPicture3, String name, String shortDescription, String longDescription, String price, String category, String productSold, String productForSell) {
        try {
            String expression = String.format("/products/product[@productId='%s']/@productId", productId);
            String productFount = (String) xPath.compile(expression).evaluate(xmlDocument);

            if (productFount.equals("")) {
                Element newProduct = xmlDocument.createElement("product");

                newProduct.setAttribute("productId", productId);
                newProduct.setAttribute("category", category);

                Element newUrlPicture1 = xmlDocument.createElement("urlPicture1");
                newUrlPicture1.appendChild(xmlDocument.createTextNode(urlPicture1));

                Element newUrlPicture2 = xmlDocument.createElement("urlPicture2");
                newUrlPicture2.appendChild(xmlDocument.createTextNode(urlPicture2));

                Element newUrlPicture3 = xmlDocument.createElement("urlPicture3");
                newUrlPicture3.appendChild(xmlDocument.createTextNode(urlPicture3));

                Element newName = xmlDocument.createElement("name");
                newName.appendChild(xmlDocument.createTextNode(name));

                Element newShortDescription = xmlDocument.createElement("shortDescription");
                newShortDescription.appendChild(xmlDocument.createTextNode(shortDescription));

                Element newLongDescription = xmlDocument.createElement("longDescription");
                newLongDescription.appendChild(xmlDocument.createTextNode(longDescription));

                Element newPrice = xmlDocument.createElement("price");
                newPrice.appendChild(xmlDocument.createTextNode(price));

                Element newProductSold = xmlDocument.createElement("productSold");
                newProductSold.appendChild(xmlDocument.createTextNode(productSold));

                Element newProductForSell = xmlDocument.createElement("productForSell");
                newProductForSell.appendChild(xmlDocument.createTextNode(productForSell));

                newProduct.appendChild(newName);
                newProduct.appendChild(newShortDescription);
                newProduct.appendChild(newLongDescription);
                newProduct.appendChild(newPrice);
                newProduct.appendChild(newProductSold);
                newProduct.appendChild(newProductForSell);
                newProduct.appendChild(newUrlPicture1);
                newProduct.appendChild(newUrlPicture2);
                newProduct.appendChild(newUrlPicture3);

                Node RootNode = xmlDocument.getElementsByTagName("products").item(0);
                RootNode.appendChild(newProduct);

                TransformerFactory transformerFactory = TransformerFactory.newInstance();

                Transformer transformer = transformerFactory.newTransformer();
                DOMSource domSource = new DOMSource(xmlDocument);

                StreamResult streamResult = new StreamResult(new File(xmlFile));
                transformer.transform(domSource, streamResult);
                return true;
            }
        } catch (XPathExpressionException ex) {
            System.err.println("addNewProduct method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (TransformerException ex) {
            System.err.println("addNewProduct method, TransformerException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return false;
    }

    public boolean deletePlantById(String productId) {
        try {
            String expression = String.format("/products/product[@productId='%s']", productId);

            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {

                Node rootNode = xmlDocument.getElementsByTagName("products").item(0);
                rootNode.removeChild(node);

                TransformerFactory transformerFactory = TransformerFactory.newInstance();

                Transformer transformer = transformerFactory.newTransformer();
                DOMSource domSource = new DOMSource(xmlDocument);

                StreamResult streamResult = new StreamResult(new File(xmlFile));
                transformer.transform(domSource, streamResult);
                return true;
            }
        } catch (XPathExpressionException ex) {
            System.err.println("deleteProductById method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (TransformerException ex) {
            System.err.println("deleteProductById method, TransformerException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return false;
    }

}
