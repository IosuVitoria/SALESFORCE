public class ContactosPorCuentaController {
    public String selectedAccountId { get; set; }
    public List<SelectOption> cuentas { get; set; }
    public List<Contact> contactos { get; set; }

    public ContactosPorCuentaController() {
        cuentas = new List<SelectOption>();
        List<Account> listaCuentas = [SELECT Id, Name FROM Account LIMIT 100];
        
        for (Account acc : listaCuentas) {
            cuentas.add(new SelectOption(acc.Id, acc.Name));
        }
        
        contactos = new List<Contact>();
    }

    public void setSelectedAccountId(String id) {
        selectedAccountId = id;
        if (selectedAccountId != null) {
            contactos = [SELECT Name, Phone, Email FROM Contact WHERE AccountId = :selectedAccountId];
        } else {
            contactos.clear();
        }
    }
}
