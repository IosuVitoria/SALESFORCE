public class CrearCuentaController {
    public Account nuevaCuenta { get; set; }
    
    public CrearCuentaController() {
        nuevaCuenta = new Account();
    }
    
    public PageReference guardarCuenta() {
        insert nuevaCuenta;
        return null;
    }
}
