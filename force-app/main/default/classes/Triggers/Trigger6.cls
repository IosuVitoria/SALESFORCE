// Crea un trigger que se ejecute después de actualizar un Opportunity. Si la StageName de la oportunidad cambia a “Closed Won”,
//  actualiza el campo Status__c del Account relacionado a “Cliente Activo”.

trigger updateOpportunity on Opportunity(after update){

    //Se seleccionan todos los Ids de las accounts que pasan a tener la oportunidad en 'Closed won.'
    Set<Id> accountsId accountsId = new Set<Id>();
    for (Opportunity opp : Trigger.New) {
        if (opp.StageName == 'Closed Won') {
            //OJO: La oportunidad se relaciona con Account ya que esta se genera en base a un AccountId. Una oportunidad se vincula a una cuenta.
            accountIds.add(opp.AccountId);
        }
    }

    //Actualizo en base a los Ids recogidos en el SET. Al ser un SET no hay recogidos y tengo seleccionados todos los Ids que debo modificar.
    List<Account> accountsToUpdate = [SELECT Id, Status__c FROM Account WHERE Id IN :accountIds];
    for (Account acc : accountsToUpdate) {
        acc.Status__c = 'Cliente Activo';
    }

    //Actualizo si hay alguno que cumple requerimiento.
    if (accountsToUpdate.size() > 0) {
        update accountsToUpdate;
    }
}