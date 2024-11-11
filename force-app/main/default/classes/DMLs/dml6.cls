// 6. *Actualización masiva de registros de Contacto:*  Desarrolla una clase que actualice en masa el campo de Email de los contactos cuyo nombre sea "Juan".

public class MassEmailUpdater {
    public void updateEmails(List<String> emailList) {
        List<Contact> contactsToUpdate = [SELECT Id, Email FROM Contact WHERE FirstName = 'Juan'];
        Integer i = 0;
        for (Contact c : contactsToUpdate) {
            c.Email = emailList[i];
            i++;
            if (i == emailList.size()) {
                break;
            }
        }
        update contactsToUpdate;
    }
}
