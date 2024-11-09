// Crea un trigger que se ejecute antes de insertar una Account y verifique si ya existe una cuenta con el mismo nombre. 
// Si se encuentra una cuenta duplicada, lanza un error y evita que se cree el nuevo registro.

trigger checkDuplicateNames on Accounts (before insert){
    Set<String> nombresAccount = new Set<String>();
    for(Account acc: Trigger.new){
        nombresAccount.add(acc.name)
    }

    List<Accounts> nombresPrevios = [SELECT Name FROM Account WHERE Name IN :nombresAccount];

    for(Account previo: nombresPrevios){
        for(Account  newAcc : Trigger.new){
            if(previo.name = newAcc.name){
                newAcc.addError('Existe una cuenta ya con este nombre.')
            }
        }
    }