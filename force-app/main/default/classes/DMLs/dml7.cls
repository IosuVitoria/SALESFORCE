// 7. *Registrar oportunidad de ventas y crear tarea:* Crea una clase que cree una oportunidad y una tarea asociada cuando se cree una nueva oportunidad.

public class OpportunityAndTaskCreator {
    public void createOpportunityAndTask(String opportunityName, Decimal amount, Id accountId) {
        Opportunity opp = new Opportunity(
            Name = opportunityName,
            StageName = 'Prospecting',
            CloseDate = Date.today(),
            Amount = amount,
            AccountId = accountId
        );
        insert opp;

        Task newTask = new Task(
            WhatId = opp.Id,
            Subject = 'Follow up on Opportunity',
            Status = 'Not Started',
            Priority = 'High'
        );
        insert newTask;
    }
}
