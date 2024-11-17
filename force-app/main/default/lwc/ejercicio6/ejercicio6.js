import { LightningElement, track } from 'lwc';

export default class Ejercicio6 extends LightningElement {
    newTask = ''; 

    @track tasks = []; 

    handleInputChange(event) {
        this.newTask = event.target.value;
    }

    addTask() {
        if (this.newTask.trim()) {
            this.tasks = [...this.tasks, { id: Date.now(), name: this.newTask }];
            this.newTask = '';
        }
    }

    removeTask(event) {
        const taskId = event.target.dataset.id;
        this.tasks = this.tasks.filter(task => task.id !== parseInt(taskId));
    }
}
