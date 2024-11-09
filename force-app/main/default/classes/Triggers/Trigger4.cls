// Crea un trigger que se ejecute antes de insertar o actualizar un Contact. Este trigger debe 
// concatenar el FirstName y el LastName en un campo personalizado llamado FullName__c.

trigger workOnContact on Contact(before update, before insert){
    for(Contact con : Trigger.new){
        if(con.FirstName != '' && con.LastName != null){
            con.FullName__c = con.FirstName + ' ' + con.LastName;
        }
    }
}