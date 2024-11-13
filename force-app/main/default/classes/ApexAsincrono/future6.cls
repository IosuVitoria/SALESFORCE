// 6. Ejercicio: Marcar Tareas como Completadas
// Desarrolla un método @future que reciba una lista de Ids de tareas (Tasks) y marque cada una de ellas como completada (Status = 'Completed').


public with sharing class future6 {
    @future
    public static void completeTasks(List<Id> taskIds) {
        List<Task> tareasPorCompletar = [SELECT Id, Status FROM Task WHERE Id IN :taskIds];
        List<Task> tareasActualizadas = new List<Task>();

        for (Task task : tareasPorCompletar) {
            task.Status = 'Completed';
            tareasActualizadas.add(task);
        }

        if (!tareasActualizadas.isEmpty()) {
            update tareasActualizadas;
        }
    }
}