public with sharing class future5 {
    @future
    public static void updateEmails(List<Id> contactIds) {
        List<Contact> contactosPorActualizar = [SELECT Id, Email FROM Contact WHERE Id IN :contactIds];
        List<Contact> contactosActualizados = new List<Contact>();

        for (Contact con : contactosPorActualizar) {
            if (con.Email != null) {
                // Añadir sufijo '+actualizado' al email
                con.Email = con.Email.split('@')[0] + '+actualizado@' + con.Email.split('@')[1];
                contactosActualizados.add(con);
            }
        }

        // Actualizar los contactos con el nuevo email
        if (!contactosActualizados.isEmpty()) {
            update contactosActualizados;
        }
    }
}