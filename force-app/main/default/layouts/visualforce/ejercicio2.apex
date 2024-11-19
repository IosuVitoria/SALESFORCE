// 2. **Formularios con Visualforce**
// *Objetivo*: Crear un formulario en Visualforce para recoger datos del usuario.
// *Descripción*: Crea una página con un formulario que permita al usuario ingresar información básica, como nombre, correo electrónico y teléfono. Al enviar el formulario, los datos deben mostrarse en la misma página.
// *Conceptos Involucrados*: apex:form, apex:inputText, apex:commandButton.

<apex:page controller="FormularioController">
    <apex:form>
        <apex:pageBlock title="Formulario de Usuario">
            <apex:pageBlockSection columns="1">
                <apex:inputText value="{!nombre}" label="Nombre"/>
                <apex:inputText value="{!correo}" label="Correo Electrónico"/>
                <apex:inputText value="{!telefono}" label="Teléfono"/>
            </apex:pageBlockSection>
            <apex:commandButton value="Enviar" action="{!guardarDatos}"/>
        </apex:pageBlock>
        
        <apex:outputPanel rendered="{!mostrarDatos}">
            <h2>Datos Ingresados:</h2>
            <p>Nombre: {!nombre}</p>
            <p>Correo: {!correo}</p>
            <p>Teléfono: {!telefono}</p>
        </apex:outputPanel>
    </apex:form>
</apex:page>