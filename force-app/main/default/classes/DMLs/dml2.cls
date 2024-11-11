// 2. *Actualizar los Nombres de Contacto:* Crea una clase que actualice el nombre de todos los contactos cuyo apellido sea "González" a "Lopez".

public class ContactUpdater {
    public void updateContactLastName(String oldLastName, String newLastName) {
        List<Contact> contacts = [SELECT Id, LastName FROM Contact WHERE LastName = :oldLastName];
        for (Contact con : contacts) {
            con.LastName = newLastName;
        }
        update contacts;
    }
}