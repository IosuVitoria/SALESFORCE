1. Muy Fácil: Usar @future para enviar un email
Crea un método asíncrono con la anotación @future que envíe un email simple a una dirección específica. La idea es que practiques la estructura básica del @future y entiendas cómo funciona la ejecución en segundo plano.
2. Ejercicio: Enviar Notificaciones de Casos Nuevos con @future
Crea un método @future que envíe una notificación (puede ser un email) a un usuario específico cada vez que se cree un nuevo Caso con prioridad "Alta". La notificación debe incluir el número del Caso y su descripción.
3.  Ejercicio: Actualizar los Descuentos de Oportunidades con @future
Desarrolla un método asíncrono @future que reciba un conjunto de Ids de oportunidades y establezca un descuento del 10% en todas ellas. El descuento debe calcularse en base al campo Amount.
4. Ejercicio: Consultar Contactos Relacionados con Cuentas Específicas usando @future
Crea un método @future que reciba una lista de Ids de Cuenta y consulte todos los Contactos asociados a esas cuentas. Luego, actualiza un campo personalizado Last_Contact_Check__c en la cuenta con la fecha de la última consulta.
5. Ejercicio: Actualizar la Dirección de Email de Contactos
Crea un método @future que reciba una lista de Ids de contactos y actualice el campo Email de cada contacto con un sufijo adicional. Por ejemplo, si el email actual es usuario@example.com, debería actualizarse a usuario+actualizado@example.com.
6. Ejercicio: Marcar Tareas como Completadas
Desarrolla un método @future que reciba una lista de Ids de tareas (Tasks) y marque cada una de ellas como completada (Status = 'Completed').
7. Ejercicio: Incrementar un Campo Numérico en Cuentas
Crea un método @future que incremente el valor de un campo numérico personalizado Custom_Number__c en todas las cuentas que reciba. Incrementa el valor en 5 unidades.