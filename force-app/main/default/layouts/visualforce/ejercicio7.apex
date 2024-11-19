// 7. **Uso de JavaScript en Visualforce**
// *Objetivo*: Integrar JavaScript en una página Visualforce.
// *Descripción*: Crea una página Visualforce que incluya un botón. Al hacer clic en el botón, una alerta de JavaScript debe mostrar "¡Has hecho clic en el botón!".
// *Conceptos Involucrados*: apex:commandButton, JavaScript en Visualforce.


<apex:page>
    <apex:form>
        <apex:commandButton value="Haz clic aquí" onclick="mostrarAlerta();" />
        <script>
            function mostrarAlerta() {
                alert('¡Has hecho clic en el botón!');
            }
        </script>
    </apex:form>
</apex:page>
