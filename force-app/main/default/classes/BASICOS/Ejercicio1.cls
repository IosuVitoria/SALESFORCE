// 1. Crear una Clase para Calcular Impuestos sobre el Monto de una Oportunidad
// Crea una clase llamada OpportunityTaxCalculator que contenga un método para calcular el impuesto sobre el monto de una oportunidad. El método debe recibir el monto de la oportunidad y el porcentaje de impuesto, y devolver el monto total con el impuesto incluido.

// Requisitos:
// Crea un método calculateTotalWithTax que reciba dos parámetros: amount (Decimal) y taxPercentage (Decimal).
// El método debe devolver el monto total después de aplicar el impuesto.
// Si el monto o el porcentaje de impuesto son nulos o negativos, el método debe devolver 0.


public with sharing class OpportunityTaxCalculator {
    public Decimal calculateTotalWithTax(Decimal amount, Decimal taxPercentage) {
        if (amount == null || amount < 0 || taxPercentage == null || taxPercentage < 0) {
            return null;
        } else {
            Decimal taxAmount = amount * (taxPercentage / 100);
            return amount + taxAmount;
        }
    }
}
