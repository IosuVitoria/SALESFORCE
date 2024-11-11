// 10. *Borrar Oportunidades Cerradas: *Crea una clase que elimine las oportunidades que han sido cerradas y cuyo monto sea inferior a un valor específico.

public class OpportunityDeleter {
    public void deleteClosedOpportunities(Decimal thresholdAmount) {
        List<Opportunity> opportunities = [SELECT Id FROM Opportunity WHERE IsClosed = TRUE AND Amount < :thresholdAmount];
        delete opportunities;
    }
}
