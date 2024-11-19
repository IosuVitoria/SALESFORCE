1. **Página Básica con Visualforce**
*Objetivo*: Crear una página Visualforce sencilla.
*Descripción*: Crea una página Visualforce que muestre "¡Hola, Mundo!" en un apex:page. Utiliza etiquetas HTML básicas como encabezados (<h1>, <h2>), párrafos (<p>), listas (<ul>, <ol>), etc.
*Conceptos Involucrados*: apex:page, HTML básico.

2. **Formularios con Visualforce**
*Objetivo*: Crear un formulario en Visualforce para recoger datos del usuario.
*Descripción*: Crea una página con un formulario que permita al usuario ingresar información básica, como nombre, correo electrónico y teléfono. Al enviar el formulario, los datos deben mostrarse en la misma página.
*Conceptos Involucrados*: apex:form, apex:inputText, apex:commandButton.


3. **Consultas SOQL en Visualforce**
*Objetivo*: Mostrar una lista de registros desde Salesforce en una página Visualforce.
*Descripción*: Crea una página Visualforce que muestre una lista de registros de la tabla Contact. Muestra campos como nombre, teléfono y correo electrónico en una tabla.
*Conceptos Involucrados*: apex:repeat, apex:outputText, SOQL básico.


4. **Paginación en Visualforce**
*Objetivo*: Implementar la paginación de registros.
*Descripción*: Usa un StandardSetController para implementar la paginación de contactos. La página debe mostrar solo 10 contactos por página y debe permitir navegar entre páginas usando botones "Anterior" y "Siguiente".
*Conceptos Involucrados*: StandardSetController, apex:commandButton, lógica de paginación.


5. **Uso de Controladores Personalizados**
*Objetivo*: Implementar un controlador Apex personalizado para manipular datos.
*Descripción*: Crea una página Visualforce que permita al usuario crear un nuevo registro de la tabla Account. Implementa la lógica de guardar el registro utilizando un controlador Apex personalizado.
*Conceptos Involucrados*: Controladores personalizados en Apex, apex:form, apex:commandButton.


6. **Componentes Visualforce Reutilizables**
*Objetivo*: Crear un componente Visualforce reutilizable.
*Descripción*: Crea un componente Visualforce que reciba una lista de contactos como atributo y los muestre en una tabla. Luego, utiliza este componente en una página Visualforce principal.
*Conceptos Involucrados*: apex:component, apex:attribute, reutilización de componentes.


7. **Uso de JavaScript en Visualforce**
*Objetivo*: Integrar JavaScript en una página Visualforce.
*Descripción*: Crea una página Visualforce que incluya un botón. Al hacer clic en el botón, una alerta de JavaScript debe mostrar "¡Has hecho clic en el botón!".
*Conceptos Involucrados*: apex:commandButton, JavaScript en Visualforce.


8. **Visualforce y CSS para el Estilo**
*Objetivo*: Aplicar estilos CSS a una página Visualforce.
*Descripción*: Diseña una página Visualforce que liste oportunidades (Opportunity) y agrega estilos CSS personalizados para mejorar la presentación de la tabla. Usa clases CSS para definir el estilo de los encabezados, filas y botones.
*Conceptos Involucrados*: CSS en Visualforce, apex:stylesheet.


9. **Crear una Página Visualforce para Editar Oportunidades**
*Objetivo*: Crear una página Visualforce que permita visualizar y editar las Oportunidades de Salesforce. Esta página debe mostrar una lista de oportunidades, y el usuario podrá modificar ciertos campos (por ejemplo, el monto y la etapa de la oportunidad).

Pasos del Ejercicio:
- Crear un controlador Apex que obtenga las oportunidades y permita su edición.
- Crear una página Visualforce que muestre las oportunidades en una tabla y permita al usuario editarlas.
- Guardar las modificaciones realizadas a las oportunidades.


10. **Página Visualforce Dinámica con AJAX**
*Objetivo*: Implementar la actualización dinámica de datos en Visualforce.
*Descripción*: Crea una página Visualforce que permita seleccionar un registro de Account desde un menú desplegable (apex:selectList) y que muestre los contactos relacionados con esa cuenta en tiempo real sin recargar la página.
*Conceptos Involucrados*: apex:actionFunction, apex:selectList, apex:actionSupport, AJAX en Visualforce.