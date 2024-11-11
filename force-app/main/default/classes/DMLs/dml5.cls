// 5. *Insertar y Enviar un Correo desde Caso:* Crea una clase que inserte un registro de Caso y luego envíe un correo electrónico utilizando el método Messaging.

public class CaseInsertionAndEmail {
    public void insertCaseAndSendEmail(String subject, String description, String emailAddress) {
        Case newCase = new Case(
            Subject = subject,
            Description = description
        );
        insert newCase;

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[] { emailAddress });
        mail.setSubject('Nuevo Caso Creado');
        mail.setPlainTextBody('Un nuevo caso ha sido creado: ' + subject);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}
