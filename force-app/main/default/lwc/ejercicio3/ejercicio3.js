import { api, LightningElement } from 'lwc';

export default class Ejercicio3 extends LightningElement {

    @api contador = 0;

    handleClick(){
        this.contador += 1;
    }
}