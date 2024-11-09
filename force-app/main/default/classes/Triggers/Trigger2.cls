// Crea un trigger que se ejecute antes de insertar o actualizar una Account.
//  Si el campo Industry está vacío, asigna automáticamente el valor “Technology” como industria predeterminada

trigger accountAssignation on Account(before insert, before update){
    for(Account acc : Trigger.new){
        if(acc.Industry == null){
            acc.Industry = 'Technology';
        }
        insert acc;
    }
}