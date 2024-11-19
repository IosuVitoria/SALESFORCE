public class FormularioController {
  
    public String nombre { get; set; }
    public String correo { get; set; }
    public String telefono { get; set; }
    public Boolean mostrarDatos { get; set; }
    
    public FormularioController() {
        mostrarDatos = false;
    }

    public void guardarDatos() {
        mostrarDatos = true;
    }
}
