// Ejercicio: Incrementar un Campo Numérico en Cuentas
// Crea un método @future que incremente el valor de un campo numérico personalizado Custom_Number__c en todas las cuentas que reciba. Incrementa el valor en 5 unidades.

public with sharing class future7 {
    public future7() {
        @future
        public static void incrementCustomField(List<Id> accountIds) {
            List<Account> cuentasPorActualizar = [SELECT Id, Custom_Number__c FROM Account WHERE Id IN :accountIds];
            List<Account> cuentasActualizadas = new List<Account>();
    
            for (Account acc : cuentasPorActualizar) {
                if (acc.Custom_Number__c != null) {
                    acc.Custom_Number__c += 5;
                    cuentasActualizadas.add(acc);
                }
            }
    
            if (!cuentasActualizadas.isEmpty()) {
                update cuentasActualizadas;
            }
        }
    }
}