// 10. **Página Visualforce Dinámica con AJAX**
// *Objetivo*: Implementar la actualización dinámica de datos en Visualforce.
// *Descripción*: Crea una página Visualforce que permita seleccionar un registro de Account desde un menú desplegable (apex:selectList) y que muestre los contactos relacionados con esa cuenta en tiempo real sin recargar la página.
// *Conceptos Involucrados*: apex:actionFunction, apex:selectList, apex:actionSupport, AJAX en Visualforce.

<apex:page controller="ContactosPorCuentaController">
    <apex:form>
        <apex:pageBlock title="Contactos por Cuenta">
            <apex:pageBlockSection>
                <apex:selectList value="{!selectedAccountId}" size="1">
                    <apex:selectOptions value="{!cuentas}"/>
                    <apex:actionSupport event="onchange" reRender="contactosPanel"/>
                </apex:selectList>
            </apex:pageBlockSection>

            <apex:outputPanel id="contactosPanel">
                <apex:pageBlockTable value="{!contactos}" var="contacto">
                    <apex:column headerValue="Nombre" value="{!contacto.Name}"/>
                    <apex:column headerValue="Teléfono" value="{!contacto.Phone}"/>
                    <apex:column headerValue="Correo Electrónico" value="{!contacto.Email}"/>
                </apex:pageBlockTable>
            </apex:outputPanel>
        </apex:pageBlock>
    </apex:form>
</apex:page>
