// 3. **Consultas SOQL en Visualforce**
// *Objetivo*: Mostrar una lista de registros desde Salesforce en una página Visualforce.
// *Descripción*: Crea una página Visualforce que muestre una lista de registros de la tabla Contact. Muestra campos como nombre, teléfono y correo electrónico en una tabla.
// *Conceptos Involucrados*: apex:repeat, apex:outputText, SOQL básico.

<apex:page controller="ListaContactosController">
    <apex:pageBlock title="Lista de Contactos">
        <apex:pageBlockTable value="{!contactos}" var="contacto">
            <apex:column headerValue="Nombre">
                <apex:outputText value="{!contacto.Name}"/>
            </apex:column>
            <apex:column headerValue="Teléfono">
                <apex:outputText value="{!contacto.Phone}"/>
            </apex:column>
            <apex:column headerValue="Correo Electrónico">
                <apex:outputText value="{!contacto.Email}"/>
            </apex:column>
        </apex:pageBlockTable>
    </apex:pageBlock>
</apex:page>
