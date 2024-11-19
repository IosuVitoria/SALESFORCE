// 4. **Paginación en Visualforce**
// *Objetivo*: Implementar la paginación de registros.
// *Descripción*: Usa un StandardSetController para implementar la paginación de contactos. La página debe mostrar solo 10 contactos por página y debe permitir navegar entre páginas usando botones "Anterior" y "Siguiente".
// *Conceptos Involucrados*: StandardSetController, apex:commandButton, lógica de paginación.

<apex:page controller="PaginacionContactosController">
    <apex:form>
        <apex:pageBlock title="Contactos con Paginación">
            <apex:pageBlockTable value="{!contactos}" var="contacto">
                <apex:column value="{!contacto.Name}" headerValue="Nombre"/>
                <apex:column value="{!contacto.Phone}" headerValue="Teléfono"/>
                <apex:column value="{!contacto.Email}" headerValue="Correo Electrónico"/>
            </apex:pageBlockTable>
            <apex:commandButton value="Anterior" action="{!anterior}" disabled="{!!puedeRetroceder}"/>
            <apex:commandButton value="Siguiente" action="{!siguiente}" disabled="{!!puedeAvanzar}"/>
        </apex:pageBlock>
    </apex:form>
</apex:page>
