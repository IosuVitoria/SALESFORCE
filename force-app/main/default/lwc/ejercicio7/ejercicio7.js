import { LightningElement, track } from 'lwc';

export default class Ejercicio7 extends LightningElement {
    city = '';
    @track weather = null;
    error = null;

    handleCityChange(event) {
        this.city = event.target.value;
    }

    async getWeather() {
        try {
            //DEJO SIN API KEY. Esto tendreís que sustituirlo por lo que os sea personal. Si hay dudas haré video explicativo.
            const response = await fetch(`https://api.openweathermap.org/data/2.5/weather?q=${this.city}&units=metric&appid=YOUR_API_KEY`);
            const data = await response.json();

            if (data.main) {
                this.weather = {
                    temp: data.main.temp,
                    description: data.weather[0].description
                };
                this.error = null;
            } else {
                this.error = data.message;
                this.weather = null;
            }
        } catch (err) {
            this.error = 'No se pudo conectar al servicio de clima.';
            this.weather = null;
        }
    }
}
