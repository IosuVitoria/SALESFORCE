// 4. *Consultar Cuentas con Oportunidades Activas:* Crea una clase que devuelva las cuentas que tienen al menos una oportunidad activa.

public class AccountWithOpportunities {
    public List<Account> getAccountsWithActiveOpportunities() {
        List<Account> accounts = [SELECT Id, Name FROM Account WHERE Id IN (SELECT AccountId FROM Opportunity WHERE IsClosed = FALSE)];
        return accounts;
    }
}
