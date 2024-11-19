public class ListaOportunidadesController {
    public List<Opportunity> oportunidades { get; set; }
    
    public ListaOportunidadesController() {
        oportunidades = [SELECT Id, Name, Amount, StageName FROM Opportunity LIMIT 50];
    }
}
