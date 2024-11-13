// 3.  Ejercicio: Actualizar los Descuentos de Oportunidades con @future
// Desarrolla un método asíncrono @future que reciba un conjunto de Ids de oportunidades y establezca un descuento del 10% en todas ellas.
//  El descuento debe calcularse en base al campo Amount.

public with sharing class future3 {

    @future
    public static void future3(List<Id> opportunityIds) {

        List<Opportunity> oportunidadesPorActualizar = [SELECT Id, Amount, Name from Opportunity WHERE Id =: opportunityIds];
        System.debug('Oportunidades recuperadas: ' + oportunidadesPorActualizar);
        List<Opportunity> oportunidadesActualizadas = new List<Opportunity>();

        for(Opportunity opp : oportunidadesPorActualizar) {
            opp.Amount = op.Amount * 0.90;
            oportunidadesActualizadas.add(opp);
        }

        if(oportunidadesActualizadas.size() > 0){
            update oportunidadesActualizadas;
        }
    }
}