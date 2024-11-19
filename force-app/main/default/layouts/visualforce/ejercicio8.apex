// 8. **Visualforce y CSS para el Estilo**
// *Objetivo*: Aplicar estilos CSS a una página Visualforce.
// *Descripción*: Diseña una página Visualforce que liste oportunidades (Opportunity) y agrega estilos CSS personalizados para mejorar la presentación de la tabla. Usa clases CSS para definir el estilo de los encabezados, filas y botones.
// *Conceptos Involucrados*: CSS en Visualforce, apex:stylesheet.

<apex:page controller="ListaOportunidadesController">
    <style>
        .tabla-oportunidades {
            width: 100%;
            border-collapse: collapse;
        }
        .tabla-oportunidades th, .tabla-oportunidades td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .tabla-oportunidades th {
            background-color: #f2f2f2;
            color: #333;
        }
    </style>
    
    <apex:pageBlock title="Oportunidades">
        <!-- Asegúrate de que la propiedad 'oportunidades' está correctamente definida en el controlador -->
        <apex:pageBlockTable value="{!oportunidades}" var="op">
            <apex:column headerValue="Nombre">
                <apex:outputText value="{!op.Name}"/>
            </apex:column>
            <apex:column headerValue="Monto">
                <apex:outputText value="{!op.Amount}"/>
            </apex:column>
            <apex:column headerValue="Etapa">
                <apex:outputText value="{!op.StageName}"/>
            </apex:column>
        </apex:pageBlockTable>
    </apex:pageBlock>
</apex:page>
