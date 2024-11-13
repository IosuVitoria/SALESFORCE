public with sharing class future2{
    @future
    public static void sendCaseNotification(Id caseId) {
        Case newCase = [SELECT CaseNumber, Description FROM Case WHERE Id = :caseId LIMIT 1];
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new String[] {'user@example.com'});
        email.setSubject('Nuevo Caso de Alta Prioridad: ' + newCase.CaseNumber);
        email.setPlainTextBody('Descripción del Caso: ' + newCase.Description);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }
ç
}

