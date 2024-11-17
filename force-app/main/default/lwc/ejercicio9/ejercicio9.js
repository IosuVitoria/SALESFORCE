import { LightningElement, track } from 'lwc';

export default class Ejercicio9 extends LightningElement {
    @track products = [
        { id: 1, name: 'Producto A', price: 10, category: 'Electrónica' },
        { id: 2, name: 'Producto B', price: 20, category: 'Hogar' },
        { id: 3, name: 'Producto C', price: 15, category: 'Deportes' },
        { id: 4, name: 'Producto D', price: 25, category: 'Jardinería' }
    ];

    @track filteredProducts = [...this.products];
    searchTerm = '';

    handleSearchChange(event) {
        this.searchTerm = event.target.value.toLowerCase();
        this.applyFilters();
    }

    sortAsc() {
        this.filteredProducts = [...this.filteredProducts].sort((a, b) => a.name.localeCompare(b.name));
    }

    sortDesc() {
        this.filteredProducts = [...this.filteredProducts].sort((a, b) => b.name.localeCompare(a.name));
    }

    applyFilters() {
        this.filteredProducts = this.products.filter(product =>
            product.name.toLowerCase().includes(this.searchTerm)
        );
    }
}
