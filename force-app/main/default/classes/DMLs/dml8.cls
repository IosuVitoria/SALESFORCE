// 8. *Obtener Contactos por Cuenta:* Desarrolla una clase que devuelva los contactos asociados a una cuenta específica.

public class ContactFetcher {
    public List<Contact> getContactsByAccountId(Id accountId) {
        List<Contact> contacts = [SELECT Id, FirstName, LastName FROM Contact WHERE AccountId = :accountId];
        return contacts;
    }
}
