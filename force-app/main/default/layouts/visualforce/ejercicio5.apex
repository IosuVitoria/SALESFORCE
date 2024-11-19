// 5. **Uso de Controladores Personalizados**
// *Objetivo*: Implementar un controlador Apex personalizado para manipular datos.
// *Descripción*: Crea una página Visualforce que permita al usuario crear un nuevo registro de la tabla Account. Implementa la lógica de guardar el registro utilizando un controlador Apex personalizado.
// *Conceptos Involucrados*: Controladores personalizados en Apex, apex:form, apex:commandButton.

<apex:page controller="CrearCuentaController">
    <apex:form>
        <apex:pageBlock title="Crear Nueva Cuenta">
            <apex:pageBlockSection columns="1">
                <apex:inputField value="{!nuevaCuenta.Name}" label="Nombre de la Cuenta"/>
                <apex:inputField value="{!nuevaCuenta.Phone}" label="Teléfono"/>
            </apex:pageBlockSection>
            <apex:commandButton value="Guardar" action="{!guardarCuenta}"/>
        </apex:pageBlock>
    </apex:form>
</apex:page>

