package xmlProducts;

public class Main {

    public static void main(String[] args) {
        ProductsXmlManager plantsManager = new ProductsXmlManager();
        ProductsListManager listManager = new ProductsListManager();
        PlantsController pc = new PlantsController();
//        System.out.println("Lista de plantas\n" + listManager.productsList(pc.getPlantsList()));
//        System.out.println(plantsManager.buyProductById("17", "3"));
//        System.out.println(plantsManager.getProductById("18"));
//        System.out.println("Plantas medicinePlants: " + listManager.productsList(plantsManager.getProductsByCategory("Plantas Medicinales")));
//        System.out.println("\nActualizado: " + plantsManager.updatePlantById("18", "cambio nombre", "categoria", "descripcion", "descrip", "123123"));
//        System.out.println(plantsManager.getProductById("18"));
//        System.out.println(plantsManager.deletePlantById("18"));

        System.out.println("Insertado: " + plantsManager.addNewProduct("1", "../productsPicture/medicinePlants/albahaca.jpg", "../productsPicture/medicinePlants/albahaca2.jpg", "../productsPicture/medicinePlants/albahaca3.jpg", "Albahaca", "Anestésico y problemas estomacales", "En la odontología puede ser útil como anestésico local. Otros usos son para combatir las náuseas, gases intestinales y la disentería.", "8000", "Plantas Medicinales", "2", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("2", "../productsPicture/medicinePlants/manzanilla.jpg", "../productsPicture/medicinePlants/manzanilla2.jpg", "../productsPicture/medicinePlants/manzanilla3.jpg", "Manzanilla", "Sedante y antiinflamatorio", "La mazanilla tiene efectos sedantes y antiinflamatorios. Es útil para tratar la artritis y cólicos intestinales.", "3000", "Plantas Medicinales", "5", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("3", "../productsPicture/medicinePlants/menta.jpg", "../productsPicture/medicinePlants/menta2.jpg", "../productsPicture/medicinePlants/menta3.jpg", "Menta", "Descongestionantes y anestéticos", "De la menta se extrae el mentol que se usa para ingrediente en varios productos descongestionantes, anestéticos, antisépticos carminativos.", "4000", "Plantas Medicinales", "3", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("4", "../productsPicture/medicinePlants/aloeVera.jpg", "../productsPicture/medicinePlants/aloeVera2.jpg","../productsPicture/medicinePlants/aloeVera3.jpg","Aloe vera", "Tratar quemadas y heridas.", "Por sus propiedades cicatrizantes se usa mucho para tratar quemadas y heridas. También se usa para suavizar la piel y como laxante fuerte.", "10000", "Plantas Medicinales", "3", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("5", "../productsPicture/medicinePlants/ruda.jpg", "../productsPicture/medicinePlants/ruda2.jpg","../productsPicture/medicinePlants/ruda3.jpg","Ruda", "Antiespasmódico", "Un buen antiespasmódico. Se ha utilizado para aliviar el dolor de cabeza, quitar los piojos y suprimir la tos.", "6000", "Plantas Medicinales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("6", "../productsPicture/medicinePlants/eucalipto.jpg", "../productsPicture/medicinePlants/eucalipto2.jpg","../productsPicture/medicinePlants/eucalipto3.jpg","Eucalipto", "Aliviar el asma, la tos y la congestión bronquial", "Famoso por su aroma, el eucalipto ha sido utilizado para preparar inhalaciones, jarabes y pastillas para aliviar el asma, la tos y la congestión bronquial", "6000", "Plantas Medicinales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("7", "../productsPicture/medicinePlants/malva.jpg", "../productsPicture/medicinePlants/malva2.jpg","../productsPicture/medicinePlants/malva3.jpg","Malva", "Calma las irritaciones", "Es útil para calmar las irritaciones de la piel y las mucosas. También es un emoliente. La malva actúa como diurético y laxante.", "5500", "Plantas Medicinales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("8", "../productsPicture/ornamentalPlants/guariaMorada.jpg", "../productsPicture/ornamentalPlants/guariaMorada2.jpg","../productsPicture/ornamentalPlants/guariaMorada3.jpg","Guaria Morada", "Orquídea epífita nativa de las selvas húmedas de Centroamérica. Es la flor nacional de Costa Rica.", "Guarianthe skinneri es planta epífita que se desarrolla sobre árboles, raramente sobre rocas, tienen pseudobulbos acanalados, estrechos en su base, de 25 a 30 cm y los pseudobulbos son normalmente bifoliados, de hojas disticas, que forman una planta péndula con formas de volantes e inflorescencias auxiliares uniflorales en las que la flor está boca arriba con un apéndice truncado hacia el labelo el que posee una apícula.", "10000", "Plantas Ornamentales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("9", "../productsPicture/ornamentalPlants/helecho.jpg", "../productsPicture/ornamentalPlants/helecho2.jpg","../productsPicture/ornamentalPlants/helecho3.jpg","Helecho", "Plantas vasculares sin semilla, hojas grandes, usualmente pinadas y con prefoliación circinada.", "Planta herbácea, arbustiva o arborescente, según la especie, de hojas lanceoladas, provistas de nervadura abundante y unidas entre sí por la base; se reproduce mediante esporas", "7000", "Plantas Ornamentales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("10", "../productsPicture/ornamentalPlants/cactus.jpg", "../productsPicture/ornamentalPlants/cactus2.JPG","../productsPicture/ornamentalPlants/cactus3.jpg","Cactus", "Plantas con o sin espinas las cuales pertenecen a la familia Cactaceae", "plantas suculentas con o sin espinas, se adaptan a todas lascondiciones climáticas", "2000", "Plantas Ornamentales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("11", "../productsPicture/ornamentalPlants/rosa.jpg", "../productsPicture/ornamentalPlants/rosa2.jpeg","../productsPicture/ornamentalPlants/rosa3.jpg","Rosa", "Arbustos o trepadoras generalmente espinosos", "Arbustos o trepadoras generalmente espinosos, que alcanzan entre 2 a 5 metros de alto. Las flores surgen en inflorescencias racimosas y son generalmente aromáticas", "6000", "Plantas Ornamentales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("12", "../productsPicture/ornamentalPlants/lirio.jpg", "../productsPicture/ornamentalPlants/lirio2.jpeg","../productsPicture/ornamentalPlants/lirio3.jpg","Lirio", "Planta con flores de gran tamaño y variedad de colores", "Plantas perenes de tallos de casi 1 metro de alto. Las flores de esta planta son de gran tamaño y se presentan en una gran variedad de colores.", "3000", "Plantas Ornamentales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("13", "../productsPicture/ornamentalPlants/clavel.jpg", "../productsPicture/ornamentalPlants/clavel2.jpg","../productsPicture/ornamentalPlants/clavel3.jpg","Clavel", "Planta de hoja perenne y de una base fuertemente leñosa con fragancia llamativa.", "Planta de hoja perenne y de una base fuertemente leñosa destaca, sus flores son de una fragancia llamativa. Las floraciones son muy prolongadas y cuentan con muchos colores.", "4500", "Plantas Ornamentales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("14", "../productsPicture/ornamentalPlants/girasol.jpg", "../productsPicture/ornamentalPlants/girasol2.jpg","../productsPicture/ornamentalPlants/girasol3.jpg","Girasol", "Planta de grandes flores amarillas que aparecen en tallos altos.", "La planta crece en un solo tronco o tallo donde las hojas y flores forman la parte superior de la planta. ", "5000", "Plantas Ornamentales", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("15", "../productsPicture/fruitTrees/naranja.jpg", "../productsPicture/fruitTrees/naranja2.jpg","../productsPicture/fruitTrees/naranja3.jpg","Naranjo", "Ábol que cosecha frutos de narajo", "Los árboles de naranjo son de color verde, posee flores pequeñas de color blanco y en racimos. Producen los conocidos frutos de naranjo.", "8000", "Arbol frutal", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("16", "../productsPicture/fruitTrees/maranon.jpg", "../productsPicture/fruitTrees/maranon2.jpg","../productsPicture/fruitTrees/maranon3.jpg","Marañón", "Árbol que cosecha frutos de marañón", "El árbol por lo general es tupido, de  ramas bajas y amplio; puede llegar a 35 pies de altura. Las flores son amarillas y sus frutos son muy jugosos de colores amarillo o anaranjado.", "4000", "Arbol frutal", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("17", "../productsPicture/fruitTrees/aguacate.jpg", "../productsPicture/fruitTrees/aguacate2.jpg", "../productsPicture/fruitTrees/aguacate3.jpg", "Aguacate", "Árbol que cosecha frutos de aguacate", "El árbol posee hojas de 20cm aproximadamente de color verde y puede alcanzar una altura hasta de 10 m. Con pequeñas flores de color amarillo y frutos de dimensión variable", "5500", "Arbol frutal", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("18", "../productsPicture/fruitTrees/mango.jpg", "../productsPicture/fruitTrees/mango2.jpg", "../productsPicture/fruitTrees/mango3.jpg", "Mango", "Árbol que cosecha frutos de mango", "El árbol puede alcanzar una altura de más de 30m y posee hojas de color verde oscuro, largas y oscuras. Sus flores son arómaticas de color amarillo y el fruto es carnoso y ácido o dulce.", "4000", "Arbol frutal", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("19", "../productsPicture/fruitTrees/guayaba.jpg", "../productsPicture/fruitTrees/guayaba2.jpg", "../productsPicture/fruitTrees/guayaba3.jpg", "Guayabo", "Árbol que cosecha frutos de guayabo", "El árbol mide entre 3m y 6m, con hojas sencillas de color verde brillante. Sus flores son de color blanco y fruto de dimesión variable de sabor semiácido", "3000", "Arbol frutal", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("20", "../productsPicture/fruitTrees/durazno.jpg", "../productsPicture/fruitTrees/durazno2.jpg", "../productsPicture/fruitTrees/durazno3.jpg", "Durazno", "Árbol que cosecha frutos de durazno", "El árbol es de tamaño moderado y de raíces profundas con hojas verdes oscuras y largas. El fruto es de forma de globo de sabor ácido o dulce.", "8000", "Arbol frutal", "2", "3"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("21", "../productsPicture/fruitTrees/papaya.JPG", "../productsPicture/fruitTrees/papaya2.jpg", "../productsPicture/fruitTrees/papaya3.jpg", "Papaya", "Árbol que cosecha frutos de papaya", "El árbol puede alcanzar los 2,5m de altura, su tronco no posee ramas y las hojas son de tipo palmeadas. Sus flores son pequeñas y balncas y el fruto generamente es grande de color anaranjado y de sabor dulce.", "1500", "Arbol frutal", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("22", "../productsPicture/woodTrees/teca.jpg", "../productsPicture/woodTrees/teca2.jpg","../productsPicture/woodTrees/teca3.jpg","Teca", "Árbol maderable nombrada como la Reina de las Maderas por su apariencia y la capacidad de no dañarse a lo largo del tiempo", "La madera de teca es de albura blanquecina y duramen amarillento o broncíneo. La fibra es generalmente recta. Posee un tacto aceitoso y recién cortada tiene un fuerte olor que desaparece en gran medida al secarse.", "10000", "Arbol Maderable", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("23", "../productsPicture/woodTrees/melina.jpg", "../productsPicture/woodTrees/melina2.jpg","../productsPicture/woodTrees/melina3.jpg","Melina", "Árbol de rápido crecimiento La madera bajo la corteza es de color amarillo pálido a crema o beige.", "Es un árbol de rápido crecimiento que alcanza 30m de altura, 80cm de diámetro del tronco. La madera es de color amarillo pálido a crema o beige, cuando está fresca, mudando a color marrón amarillento cuando queda expuesta y es suave a moderadamente dura, ligera a moderadamente pesada.", "8000", "Arbol Maderable", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("24", "../productsPicture/woodTrees/caoba.jpg", "../productsPicture/woodTrees/caoba2.jpg","../productsPicture/woodTrees/caoba3.jpg","Caoba", "La madera de este árbol es color rojo oscuro y reconocida como una maderafina", "El árbol puede alcanzar los 35m, tronco recto y ramas gruesas. La madera de este árbol es color rojo oscuro y reconocida como una maderafina", "15000", "Arbol Maderable", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("25", "../productsPicture/woodTrees/ceiba.jpg", "../productsPicture/woodTrees/ceiba2.jpg","../productsPicture/woodTrees/ceiba3.jpg","Ceiba", "Árbol de meidano, su copa aparasolada y el follaje translúcido.", "Árbol de mediano tamaño hasta 18m, su copa aparasolada y el follaje translúcido. Hojas bipinnadas, alternas y dísticas.", "7500", "Arbol Maderable", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("26", "../productsPicture/woodTrees/roble.jpg", "../productsPicture/woodTrees/roble2.JPG","../productsPicture/woodTrees/roble3.jpg","Roble", "Árbol robusto de crecimiento poco rápido con una altura hasta de 45m", "El roble común es un árbol robusto, crece con tronco derecho y limpio sin ramificarse hasta los 15m. Con ramas tortuosas, nudosas y acodadas que proporcionan escasa sombra. Su crecimiento es poco rápido y alcanza hasta los 45m.", "12000", "Arbol Maderable", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("27", "../productsPicture/woodTrees/pino.jpg", "../productsPicture/woodTrees/pino2.jpg","../productsPicture/woodTrees/pino3.jpg","Pino", "Árbol de gran altura, hasta 40m, que brinda madera fina y de calidad", "La corteza es muy gruesa, de color pardo grisáceo y muy fisurada, se desprende en grandes plaquetas en la madurez, dejando grandes manchas rojizas. Posee raíces secundarias muy desarrolladas para extraer agua de las capas profundas.", "14000", "Arbol Maderable", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("28", "../productsPicture/woodTrees/cedro.jpg", "../productsPicture/woodTrees/cedro2.jpg","../productsPicture/woodTrees/cedro3.jpg","Cedro", "Árbol de altura máxima de 30m, frecuentemente estriado longitudinalmente de corteza color café claro con fisuras", "Árbol de altura máxima de 30m, frecuentemente estriado longitudinalmente. La corteza externa es de color café claro con fisuras verticales ásperas y la interior es de color rosáceo. Es de ramas lisas, las hojas son grandes.", "9000", "Arbol Maderable", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("29", "../productsPicture/cookPlants/chile.jpg", "../productsPicture/cookPlants/chile2.jpg","../productsPicture/cookPlants/chile3.jpg","Chile dulce", "Planta que cosecha chiles dulces muy comunes en la preparación de alimentos", "La planta es tipo arbusto, alcanza los 100 cm de altura. La flor es pequeña, de color blanco y los frutos pueden ser verdes, rojos o amarillos", "800", "Planta culinaria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("30", "../productsPicture/cookPlants/ajo.jpg", "../productsPicture/cookPlants/ajo2.jpg","../productsPicture/cookPlants/ajo3.jpg","Ajo", "Planta que cosecha ajos para la preparación de alimentos y medicinas caseras", "Es una planta con hojas planas y delgadas, de hasta 30 cm de longitud. El bulbo, de piel blanca, forma una cabeza dividida en gajos que comúnmente son llamados dientes. Cada cabeza puede contener de 6 a 12 dientes, cada uno de los cuales se encuentra envuelto en una delgada capa de color blanco o rojizo", "400", "Planta culinaria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("31", "../productsPicture/cookPlants/oregano.jpg", "../productsPicture/cookPlants/oregano2.jpg","../productsPicture/cookPlants/oregano3.jpg","Orégano", "Es una de las plantas más conocidas y usadas en la cocina latina y europea", "Las hojas son pequeñas, color verde oscuro, con vello en los bordes y muy perfumadas. Es una de las plantas más conocidas y usadas en la cocina latina y europea.", "800", "Planta culinaria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("32", "../productsPicture/cookPlants/pimienta.jpg", "../productsPicture/cookPlants/pimienta2.jpg","../productsPicture/cookPlants/pimienta3.jpg","Pimienta", "El fruto de esta se convierte en el grano de pimienta al madurar. Se usa en todo el mundo como condimento,", "Es una especie trepadora que puede crecer más de 4 m. Las hojas son alternas, enteras, de unos 5 a 10 cm de largo por 3 a 6 del ancho. Las pequeñas flores surgen en racimos, a medida que los frutos maduran se van alargando hasta medir unos 7 a 15 cm.", "1500", "Planta culinaria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("33", "../productsPicture/cookPlants/apio.jpg", "../productsPicture/cookPlants/apio2.jpg", "../productsPicture/cookPlants/apio3.jpg", "Apio", "Esta planta también conocida como apionabo o apio rábano y es utilizada en la cocina en distintas regiones del mundo.", "Al apio común se aprovecha la penca y las hojas. La raíz del apio nabo es generalmente gruesa y esférica, alcanzando dimensiones de 10-20cm de diámetro. Sus hojas son tiesas y pinnadas. Contiene proporciones de vitaminas y minerables benficiosos para salud", "1000", "Planta culinaria", "4", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("34", "../productsPicture/cookPlants/cebolla.jpg", "../productsPicture/cookPlants/cebolla2.jpg", "../productsPicture/cookPlants/cebolla3.jpg", "Cebolla", "Esta planta se cultiva por sus bulbos que se utilizan como condimento o consumirse en ensaladas, guisados o encurtidos. ", "Cada planta brinda un bulbo entero de color blanco, el cual es el que se consume junto con el tallo en algunas ocaciones, estos pueden alcanzar hasta los 80cm de altura", "3500", "Planta culinaria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("35", "../productsPicture/gardenService/poda.jpg", "../productsPicture/gardenService/poda2.JPG", "../productsPicture/gardenService/poda3.jpg", "Poda de plantas y arbustos", "Disminución de abultamiento de plantas y arbustos", "En este servicio se envía a un profesional hasta el jardín de su casa para realizar podas a sus arbustos y plantas que exedan el tamaño y dimensiones que se desean.", "12000", "Servicio de jardieria", "0", "10000"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("36", "../productsPicture/gardenService/abono.jpg", "../productsPicture/gardenService/abono2.jpg", "../productsPicture/gardenService/abono3.jpg", "Abono y fertilización de plantas", "Aplicación de abonos y fertilizantes para sus plantas", "En este servio se envía a un profesional hasta el jadín de su domicilio para que este aplique los abonos y fertilizantes más adecuados a sus plantas de acuerdo a las características de este para aumentar su productividad o belleza.", "25000", "Servicio de jardineria", "0", "10000"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("37", "../productsPicture/gardenService/chapia.jpg", "../productsPicture/gardenService/chapia2.jpg","../productsPicture/gardenService/chapia3.jpg","Corte de cesped", "Corte del cesped de sus zonas verdes", "En este servicio se envía a un profesional para realizar el corte del cesped de sus zonas verdes, asi como aplicar eliminación de cualquier tipo de malas hierbas.", "8000", "Servicio de jardineria", "0", "10000"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("38", "../productsPicture/gardenService/plaga.jpg", "../productsPicture/gardenService/plaga2.jpg","../productsPicture/gardenService/plaga3.jpg","Control de plagas", "Control de todo tipo de plagas de su jardín", "En este servicio se envía a un profesional para llevar un control de los distintos tipos de plagas presentes en los jardines, desde insecto hasta roedores o aves.", "25000", "Servicio de jardineria", "0", "10000"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("39", "../productsPicture/gardenService/jardin.jpg", "../productsPicture/gardenService/jardin2.jpg","../productsPicture/gardenService/jardin3.jpg","Diseño y mantenimiento de jardín", "Diseño de todo tipo de jardines","En este servicio se envía a un profesional para valorar las condiciones del espacio donde se desea crear un jardín y así diseñar las caraterísticas mas adecuadas para su jardín y brindarle las respectivas recomendaciones.", "15000", "Servicio de jardineria", "0", "10000"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("40", "../productsPicture/gardenTools/guante.jpg", "../productsPicture/gardenTools/guante2.jpg","../productsPicture/gardenTools/guante3.jpg","Guantes de jardinería", "Guantes para utlizar en labores de jardinería", "Es importante protegerse las manos a la hora de realizar distintos trabajos en el jardines, para esto es recomedable usar estos guates para así evitar cordatudras, picaduras y otros riesgos en el los tranajos en el jardín", "4000", "Herramienta de jardineria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("41", "../productsPicture/gardenTools/pala.jpg", "../productsPicture/gardenTools/pala2.jpg","../productsPicture/gardenTools/pala3.jpg","Pala pequeña", "Pala pequeña para relizar trabajos en espacios reducidos", "Pala ancha de metal pintado con mango de plástico para mover la tierra y transportar materiales en pequeños trabajos de jardín.", "6000", "Herramienta de jardineria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("42", "../productsPicture/gardenTools/rastrillo.jpg", "../productsPicture/gardenTools/rastrillo2.jpg","../productsPicture/gardenTools/rastrillo3.jpg","Rastrillo pequeño", "Rastrillo ideal para labores en espacios reducidos", "Escarificador de metal pintado con 3 púas y mango de plástico para deshierbar, airear, remover tierras y preparar el césped en pequeños jardines.", "6000", "Herramienta de jardineria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("43", "../productsPicture/gardenTools/podadora.jpg", "../productsPicture/gardenTools/podadora2.jpg","../productsPicture/gardenTools/podadora3.jpg","Tijera de poda", "Tijera para podar plantas pequeñas de jardín", "Tijera de podar profesional a una mano de 20 cm de longitud y 26 mm de diámetro con mango de fibra de vidrio, apto para todas las estaciones, y absorción de choque. Fácil mantenimiento de las cuchillas y amortiguación del golpe al ejecutar el corte. Repele la savia.", "10000", "Herramienta de jardineria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("44", "../productsPicture/gardenTools/bota.jpg", "../productsPicture/gardenTools/bota2.jpg","../productsPicture/gardenTools/bota3.jpg","Botas de jardinería", "Botas para todo tipo de terrenos", "Bota de caña alta fabrica en PVC. Para todo tipo de terrenos como jardines o huertas.", "8000", "Herramienta de jardineria", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("45", "../productsPicture/organicProductsGarden/abonoSoluble.jpg", "../productsPicture/organicProductsGarden/abonoSoluble2.jpg","../productsPicture/organicProductsGarden/abonoSoluble3.jpg","Abono orgánico soluble", "Abono soluble para la nutrición de las plantas de la huerta o jardín sin impacto al medio ambiente", "El abono orgánico soluble es presentado en microcristales solubles para la nutrición de las plantas de huerta y ornamentalPlants, ideal para aplicar junto con el agua de riego.", "7200", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("46", "../productsPicture/organicProductsGarden/abono.png", "../productsPicture/organicProductsGarden/abono2.jpg","../productsPicture/organicProductsGarden/abono3.jpg","Abono orgánico jardín y huerta", "Abono para todo tipo de plantas del jardín sin impacto al medio ambiente", "Abono orgánico jardín y huerta es un abono órgano-mineral granulado completo con un equilibrio en nutrientes Nitrógeno-Fósforo-Potasio (NPK) pensado para el abonado en general de todo tipo de plantas de jardín, y césped.", "11950", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("47", "../productsPicture/organicProductsGarden/insecticida.jpg", "../productsPicture/organicProductsGarden/insecticida2.jpg","../productsPicture/organicProductsGarden/insecticida3.jpg","Insecticida orgánico", "Insecticida para aplicar en el jardín sin impacto al medio ambiente", "Este es un insecticida presentado en forma de polvo, con actividad por contacto, ingestión e inhalación, para el control de un gran número de insectos que atacan a las plantas.", "5300", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("48", "../productsPicture/organicProductsGarden/fungicida.png", "../productsPicture/organicProductsGarden/fungicida2.jpg", "urlproduct3", "Fungicida orgánico", "Fungicida orgánico para aplicar en el jadín sin impacto al medio ambiente", "Fungicida de amplio espectro con acción preventiva y erradicante. Gracias a su capacidad para penetrar en el interior de las hojas posee un gran poder curativo y se muestra muy resistente al lavado por la lluvia. Se emplea en el control preventivo y curativo de un amplio abanico de enfermedades causadas por hongos sobre árboles frutales y plantas hortícolas.", "14840", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("49", "../productsPicture/organicProductsGarden/abrillantador.jpg", "../productsPicture/organicProductsGarden/abrillantador2.jpg", "urlproduct3", "Abrillantador orgánico de plantas", "Abrillandor de plantas sin impacto al medio ambiente", "Este producto se debe aplicar directamente en pulverización foliar. Además de abrillantar las hojas aporta nutrientes, con lo que se estimula el crecimiento de la planta. El resultado son plantas vigorosas y radiantes.", "13700", "Producto organico", "10", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("50", "../productsPicture/organicProductsGarden/quelato.jpg", "../productsPicture/organicProductsGarden/quelato2.jpg", "urlproduct3", "Quelato de hierro orgánico", "Sustancia para la reducción de hierro en las plantas sin impacto al ambiente", "Quelato es un microgranulado soluble para la corrección de la clorosis férrica. A parte de actuar como nutrientes, mejoran la asimilación del hierro por parte de la planta", "16200", "Producto organico", "9", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("51", "../productsPicture/organicProductsGarden/fertilizante.jpg", "../productsPicture/organicProductsGarden/fertilizante2.jpg", "urlproduct3", "Fertilizante orgánico", "Fertilizante para todo tipo de plantas sin impacto al ambiente", "Es un producto ecológico formado por cepas de Trichoderma harzianum un hongo antagonista de patógenos vegetales, presente de forma natural en los suelos. Demuestra propiedades en el control biológico de diversos hongos de suelo que atacan el cuello y las raíces de las plantas.", "9000", "Producto organico", "7", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("52", "../productsPicture/organicProductsGarden/humus.jpg", "../productsPicture/organicProductsGarden/humus2.png", "urlproduct3", "Humus de lombriz", "Material procesado por lombrices que benefician las plantas", "Es una enmienda orgánica sólida que resulta de la transformación de estiércoles naturales por parte de la lombriz roja californiana.", "16230", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("53", "../productsPicture/organicProductsGarden/mejoradorSuelos.jpg", "../productsPicture/organicProductsGarden/mejoradorSuelos2.jpg", "urlproduct3", "Mejorador de suelos", "Producto orgánico que mejora las condiciones del suelo para plantaciones", "Se trata de un producto biológico natural compuesto por propágulos de hongos formadores de micorrizas. Consta de un combinado de ecto y endomicorrizas, capaces de colonizar las raíces de todo tipo de plantas, estableciéndose un mecanismo de simbiosis entre la planta y el hongo micorrícico: el producto promueve un proceso que se desarrolla de forma natural en el suelo.", "22400", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("54", "../productsPicture/organicProductsGarden/compost.jpg", "../productsPicture/organicProductsGarden/compost2.png","urlproduct3","Compost orgánico", "Fertilizante compuesto de residuos orgánicos", "Es un producto natural y ecológico 100% a base de estiércoles y materia vegetal compostada que estimula la actividad biológica del suelo potenciando el crecimiento y desarrollo de las raíces.", "18400", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("55", "../productsPicture/organicProductsGarden/mantillo.jpg", "urlpicture2","urlpicture3","Mantillo orgánico", "Produto para mejorar las condiciones del suelo para plantaciones", "Substrato formado a partir de una mezcla de materiales vegetales procedentes de las primeras capas de suelo de bosque. Sus propiedades son muy beneficiosas, tanto como substrato como mejorante de suelo por los nutrientes que aporta.", "15000", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("56", "../productsPicture/organicProductsGarden/bacillus.jpg", "urlPicture2","urlpicture3","Insecticida orgánico bacillus", "Insecticida para combatir todo tipo de insectos sin impacto al ambiente", "Insecticida constituido por esporas y cristales de toxinas procedentes de Bacillus thuringienses, varidedad kurstaki, bacteria que presenta gran actividad contra una amplio grupo de orugas de lepidópteros (mariposas).", "24000", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("57", "../productsPicture/organicProductsGarden/fortalecedor.jpg", "urlPicture2","urlPicture3","Fortalecedor orgánico de plantas", "Producto para estimular y vigorizar el crecimiento y desarrollo de plantas sin impactar el ambiente", "es un producto a base de aminoácidos procedentes de hidrólisis de proteínas animales, directamente asimilable por las plantas que fortalece su crecimiento.", "12560", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("58", "../productsPicture/organicProductsGarden/semillaSandia.jpg", "../productsPicture/organicProductsGarden/semillaSandia2.jpg","urlpicture3","Semillas orgánicas de sandía", "Semillas orgánicas de sandía para plantar ", "Semillas de sandía cuidadosamente seleccionadas y curadas sin intervención química para plantar", "900", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("59", "../productsPicture/organicProductsGarden/semillaMaiz.jpg", "../productsPicture/organicProductsGarden/semillaMaiz2.jpg","urlpicture3","Semillas orgánicas de maíz", "Semillas orgánicas de maíz para plantar", "Semillas de maíz cuidadosamente seleccionadas y curadas sin intervención química para plantar", "600", "Producto organico", "0", "10"));
        System.out.println("Insertado: " + plantsManager.addNewProduct("60", "../productsPicture/organicProductsGarden/semillaPepino.jpg", "../productsPicture/organicProductsGarden/semillaPepino2.jpg","urlpicture3","Semillas orgánicas de pepino", "Semillas orgánicas de pepino para plantar", "Semillas de pepino cuidadosamente seleccionadas y curadas sin intervención química para plantar", "400", "Producto organico", "0", "10"));

//        System.out.println("Top products:\n" + listManager.productsList(listManager.getTopProducts("products.xml")));
    }

}
