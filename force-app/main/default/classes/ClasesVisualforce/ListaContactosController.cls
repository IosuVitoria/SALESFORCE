public class ListaContactosController {
    public List<Contact> contactos { get; set; }
    
    public ListaContactosController() {
        contactos = [SELECT Id, Name, Phone, Email FROM Contact LIMIT 50];
    }
}
