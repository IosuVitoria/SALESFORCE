// 9. *Actualizar Registros de Producto:* Crea una clase que actualice el precio de un producto en base al nombre del producto.

public class ProductUpdater {
    public void updateProductPrice(String productName, Decimal newPrice) {
        List<Product2> products = [SELECT Id, Name, PricebookEntryId FROM Product2 WHERE Name = :productName];
        for (Product2 product : products) {
            product.Price__c = newPrice;
        }
        update products;
    }
}
