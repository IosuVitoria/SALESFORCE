public class EditarOportunidadesController {
    public List<Opportunity> oportunidades { get; set; }
    
    public EditarOportunidadesController() {
        oportunidades = [SELECT Id, Name, StageName, Amount FROM Opportunity WHERE IsClosed = FALSE LIMIT 10];
    }
    
    public PageReference guardarOportunidades() {
        try {
            update oportunidades;  
            return null;  
        } catch (Exception e) {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error al guardar las oportunidades: ' + e.getMessage()));
            return null;
        }
    }
}

