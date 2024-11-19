public class PaginacionContactosController {
    public ApexPages.StandardSetController stdController { get; set; }
    public List<Contact> contactos { get; set; }

    public PaginacionContactosController() {
        stdController = new ApexPages.StandardSetController([SELECT Id, Name, Phone, Email FROM Contact]);
        stdController.setPageSize(10);
        contactos = (List<Contact>)stdController.getRecords();
    }
    
    public void siguiente() {
        stdController.next();
        contactos = (List<Contact>)stdController.getRecords();
    }
    
    public void anterior() {
        stdController.previous();
        contactos = (List<Contact>)stdController.getRecords();
    }
    
    public Boolean getPuedeAvanzar() {
        return stdController.getHasNext();
    }
    
    public Boolean getPuedeRetroceder() {
        return stdController.getHasPrevious();
    }
}
