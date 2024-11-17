import { LightningElement } from 'lwc';

export default class Ejercicio4 extends LightningElement {

    formularioValido = false;

    handleEnviar(event){
        event.preventDefault();

        const inputs = this.template.querySelectorAll('lightning-input');
        let valido = true;

        inputs.forEach(input => {
            if(!input.checkValidity()){
                valido = false;
            }
        })

        if(valido){
            this.formularioValido = true;
        }else{
            this.formularioValido = false;
        }
    }
}

// OJO, lectura interesante: https://developer.salesforce.com/docs/atlas.en-us.lightning.meta/lightning/js_validate_fields.htm