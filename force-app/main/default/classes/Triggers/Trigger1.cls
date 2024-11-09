// Crea un trigger que se ejecute cuando se inserte un registro de Account. Este trigger debería simplemente registrar un 
// mensaje de depuración que indique que se ha creado una nueva cuenta.

trigger debugOnAccount on Account(after insert){
    for(Account acc : Trigger.new){
        System.debug('Se ha insertado cuenta correctamente: ' + Acc.name)
    }
}