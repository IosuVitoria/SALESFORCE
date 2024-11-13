
public with sharing class future1 {
    @future
    public static void future1(String emailAdress) {
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setToAddresses(new String[] {emailAddress});
        email.setSubject('Email Asíncrono de Prueba');
        email.setPlainTextBody('Este email fue enviado de forma asíncrona usando @future.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }
}