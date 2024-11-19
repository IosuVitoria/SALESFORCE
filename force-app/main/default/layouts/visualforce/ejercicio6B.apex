<apex:page controller="ListaContactosController">
    <apex:pageBlock title="Contactos Usando Componente">
        <c:ContactListComponent contactos="{!contactos}"/>
    </apex:pageBlock>
</apex:page>
