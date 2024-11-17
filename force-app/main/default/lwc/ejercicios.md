1. **Hola Mundo Básico**
*Conceptos*: Creación básica de un componente LWC, estructura de archivos, HTML, JS, y CSS.
*Descripción*: Crea un componente llamado helloWorld que muestre el texto "Hola Mundo" en la pantalla. Dale un poco de estilo utilizando CSS para cambiar el color del texto.
*Objetivo*: Familiarizarse con la estructura de un componente LWC y cómo se vinculan HTML, JS, y CSS.

2. **Componente con Propiedades de Entrada**
*Conceptos*: Uso de @api para recibir propiedades, template en HTML.
*Descripción*: Crea un componente llamado welcomeMessage que reciba un nombre como propiedad (nombre) y muestre un mensaje personalizado: "¡Hola, [nombre]!".
*Objetivo*: Entender cómo recibir propiedades y utilizarlas para modificar el contenido dinámicamente.

3. **Componente con Eventos Básicos**
*Conceptos*: Manejo de eventos, directivas onclick.
*Descripción*: Crea un componente llamado clickCounter. Debe tener un botón que, al hacer clic, incremente un contador que se muestre en la pantalla.
*Objetivo*: Aprender a manejar eventos simples y modificar el estado interno del componente.

4. **Formulario con Validación**
*Conceptos*: Uso de formularios, validación en LWC.
*Descripción*: Crea un componente llamado contactForm que tenga campos de entrada para el nombre, email y teléfono. Agrega validación para que el email tenga un formato correcto y el teléfono solo acepte números.
*Objetivo*: Practicar la captura de datos y aplicar validaciones básicas.

5. **Llamada a un Método Apex**
*Conceptos*: Comunicación entre LWC y Apex, decorador @wire.
*Descripción*: Crea un componente accountList que muestre una lista de cuentas. Para obtener las cuentas, realiza una llamada a un método Apex que retorne una lista de cuentas desde Salesforce.
*Objetivo*: Aprender a llamar métodos de Apex desde LWC y mostrar datos dinámicamente.

6. **Uso de un Decorador @track para Estado Reactivo**
*Conceptos*: Reactividad con @track, manejo del estado.
*Descripción*: Crea un componente llamado todoList que permita agregar tareas a una lista de pendientes. Utiliza @track para que la lista se actualice automáticamente cuando se añadan o eliminen elementos.
*Objetivo*: Entender cómo el estado interno del componente afecta la reactividad.

7. **Llamada a un Servicio Externo**
*Conceptos*: Uso de fetch para llamar a APIs externas, promesas en LWC.
*Descripción*: Crea un componente llamado weatherComponent que tome una ciudad como entrada y muestre el clima actual llamando a una API de clima pública.
*Objetivo*: Practicar la interacción con servicios externos y manejar datos asincrónicos en LWC.

**8. Uso de Slots en una Tabla (Componente Reutilizable para Mostrar Filas)**
*Conceptos*: Uso de slots, creación de componentes reutilizables.
*Descripción*: Crea un componente llamado tableComponent que funcione como una tabla reutilizable usando slots. El componente debe tener un slot específico para el encabezado de la tabla y un slot general para las filas. Luego, crea un componente llamado productTable que use tableComponent para mostrar una lista estática de productos (nombre, precio y categoría) dentro de la tabla.
*Objetivo*: Aprender a crear componentes reutilizables con slots, permitiendo la inserción de contenido dinámico en diferentes secciones del componente.

**9. Tabla con Filtros y Ordenación Sin Comunicación Padre-Hijo**
*Conceptos*: Filtrado de datos, ordenación, manejo de estado en un solo componente.
*Descripción*: Crea un componente llamado filterableProductTable que muestre una lista de productos en formato de tabla. El componente debe permitir buscar productos por nombre usando un campo de entrada y ordenarlos de manera ascendente o descendente mediante botones. La lista debe actualizarse dinámicamente según los filtros aplicados.
*Objetivo*: Practicar la manipulación de listas en LWC, el filtrado dinámico y la ordenación dentro de un único componente, sin necesidad de comunicación entre componentes.

10. **Filtrado y Ordenación de una Lista**
*Conceptos*: Manejo de listas, filtros y ordenación, directivas como for:each.
*Descripción*: Crea un componente productList que muestre una lista de productos. Agrega un cuadro de búsqueda que filtre la lista en base al nombre del producto y agrega botones para ordenar la lista ascendente o descendente.
*Objetivo*: Aprender a trabajar con listas y manipular datos dinámicamente en LWC.

