// 4. Ejercicio: Consultar Contactos Relacionados con Cuentas Específicas usando @future
// Crea un método @future que reciba una lista de Ids de Cuenta y consulte todos los Contactos asociados a esas cuentas.
//  Luego, actualiza un campo personalizado Last_Contact_Check__c en la cuenta con la fecha de la última consulta.

public with sharing class future4 {
    @future
    public static void checkContacts(Set<Id> accountIds) {
        List<Contact> contacts = [SELECT Id, AccountId FROM Contact WHERE AccountId IN :accountIds];
        Map<Id, Account> accountsToUpdate = new Map<Id, Account>();
        
        for (Contact con : contacts) {
            if (!accountsToUpdate.containsKey(con.AccountId)) {
                accountsToUpdate.put(con.AccountId, new Account(Id = con.AccountId, Last_Contact_Check__c = System.today()));
            }
        }
        
        update accountsToUpdate.values();
    }
}
