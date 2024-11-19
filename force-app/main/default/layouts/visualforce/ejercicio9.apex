// 9. **Crear una Página Visualforce para Editar Oportunidades**
// *Objetivo*: Crear una página Visualforce que permita visualizar y editar las Oportunidades de Salesforce. Esta página debe mostrar una lista de oportunidades, y el usuario podrá modificar ciertos campos (por ejemplo, el monto y la etapa de la oportunidad).

// Pasos del Ejercicio:
// - Crear un controlador Apex que obtenga las oportunidades y permita su edición.
// - Crear una página Visualforce que muestre las oportunidades en una tabla y permita al usuario editarlas.
// - Guardar las modificaciones realizadas a las oportunidades.

<apex:page controller="EditarOportunidadesController">
    <h2>Editar Oportunidades</h2>
    
    <apex:pageMessages />
    
    <apex:form>
        <apex:pageBlock title="Oportunidades Abiertas">
            <apex:pageBlockTable value="{!oportunidades}" var="op">
                <apex:column headerValue="Nombre">
                    <apex:outputText value="{!op.Name}" />
                </apex:column>
                <apex:column headerValue="Etapa">
                    <apex:inputField value="{!op.StageName}" />
                </apex:column>
                <apex:column headerValue="Monto">
                    <apex:inputField value="{!op.Amount}" />
                </apex:column>
            </apex:pageBlockTable>
            
            <apex:commandButton action="{!guardarOportunidades}" value="Guardar Cambios" />
        </apex:pageBlock>
    </apex:form>
</apex:page>