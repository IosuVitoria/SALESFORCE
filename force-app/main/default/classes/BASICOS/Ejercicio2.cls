// 2. Desarrollar una Clase para Verificar el Estado de una Cuenta
// Crea una clase llamada AccountStatusChecker que permita verificar si una cuenta tiene el estado "Activo" o "Inactivo". La clase debe contener un método que reciba el ID de la cuenta y devuelva un valor booleano indicando si la cuenta está activa.

// Requisitos:
// Crea un método isActiveAccount que reciba el parámetro accountId (Id).
// El método debe realizar una consulta SOQL para obtener el estado (Status__c) de la cuenta.
// Si el estado es "Activo", el método debe devolver true; de lo contrario, debe devolver false.

public with sharing class AccountStatusChecker {
    public Boolean isActiveAccount(Id accountId) {
        if (accountId == null) {
            return false;
        }
        
        Account acc = [SELECT Status__c FROM Account WHERE Id = :accountId LIMIT 1];
        return acc.Status__c == 'Activo';
    }
}
