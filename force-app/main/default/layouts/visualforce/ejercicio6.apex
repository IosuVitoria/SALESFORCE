// 6. **Componentes Visualforce Reutilizables**
// *Objetivo*: Crear un componente Visualforce reutilizable.
// *Descripción*: Crea un componente Visualforce que reciba una lista de contactos como atributo y los muestre en una tabla. Luego, utiliza este componente en una página Visualforce principal.
// *Conceptos Involucrados*: apex:component, apex:attribute, reutilización de componentes.

<apex:component>
    <apex:attribute name="contactos" description="Lista de Contactos" type="Object" required="true"/>
    <apex:dataTable value="{!contactos}" var="contacto" border="1">
        <apex:column headerValue="Nombre">
            <apex:outputText value="{!contacto['Name']}"/>
        </apex:column>
        <apex:column headerValue="Correo Electrónico">
            <apex:outputText value="{!contacto['Email']}"/>
        </apex:column>
        <apex:column headerValue="Teléfono">
            <apex:outputText value="{!contacto['Phone']}"/>
        </apex:column>
    </apex:dataTable>
</apex:component>
