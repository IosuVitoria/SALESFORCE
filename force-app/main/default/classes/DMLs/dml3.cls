// 3. *Eliminar Cuentas Inactivas:* Desarrolla una clase que elimine cuentas marcadas como "Inactivas" en el campo Status__c.

public class AccountDeleter {
    public void deleteInactiveAccounts() {
        List<Account> accounts = [SELECT Id FROM Account WHERE Status__c = 'Inactivo'];
        delete accounts;
    }
}