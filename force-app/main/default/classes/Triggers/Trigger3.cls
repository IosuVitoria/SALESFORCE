// Crea un trigger que se ejecute antes de insertar un Opportunity. Este trigger debe calcular el 10% del campo Amount y 
// almacenar el valor en un campo personalizado llamado Discount__c.

trigger calculateAmount on Opportunity(before insert){
    for(Opportunity opp : Trigger.new){
        if(Amount != null){
            opp.Discount__c = opp.Amount * 0.10;
        }
    }
}