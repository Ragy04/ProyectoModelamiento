package ug.products.projectppo;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import ug.products.projectppo.Classes.Cliente;

import java.io.FileWriter;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public class LoginController {

    @FXML
    private TextField nombreTextField;
    @FXML
    private TextField apellidoTextField;
    @FXML
    private TextField cedulaTextField;
    @FXML
    private TextField correoTextField;
    @FXML
    private TextField direccionTextField;
    private ArrayList<Cliente> clientes = new ArrayList<>();
    private final String jsonFileName = "src/main/java/ug/products/projectppo/JSON/Clientes.json";

    @FXML
    private void initialize() {
        cargarDatosDesdeJson();
    }

    @FXML
    private void agregarCliente() {
        String nombre = nombreTextField.getText();
        String apellido = apellidoTextField.getText();
        String cedula = cedulaTextField.getText();
        String correo = correoTextField.getText();
        String direccion = direccionTextField.getText();


        if (clienteExistenteEnArrayList(cedula) || clienteExistenteEnJson(cedula)) {
            System.out.println("Cliente existente");

            return;
        }

        Cliente cliente = new Cliente(nombre, apellido, cedula, correo, direccion);
        clientes.add(cliente);


        guardarDatosEnJson();


        System.out.println("Cliente registrado: " + cliente);


        limpiarCampos();
    }

    private boolean clienteExistenteEnArrayList(String cedula) {
        for (Cliente cliente : clientes) {
            if (cliente.getCedula().equals(cedula)) {
                return true;
            }
        }
        return false;
    }

    private boolean clienteExistenteEnJson(String cedula) {
        cargarDatosDesdeJson();
        for (Cliente cliente : clientes) {
            if (cliente.getCedula().equals(cedula)) {
                return true;
            }
        }
        return false;
    }

    @FXML
    private void eliminarCliente() {
        // Implementa la lógica para eliminar un cliente
        // Puedes utilizar clientes.remove(index) para eliminar un cliente por su posición en la lista
        // Asegúrate de actualizar también el JSON después de eliminar
    }

    @FXML
    private void modificarCliente() {
        // Implementa la lógica para modificar un cliente
        // Asegúrate de actualizar también el JSON después de modificar
    }

    private void limpiarCampos() {
        nombreTextField.clear();
        apellidoTextField.clear();
        cedulaTextField.clear();
        correoTextField.clear();
        direccionTextField.clear();
    }

    private void guardarDatosEnJson() {
        JSONArray jsonArray = new JSONArray();

        for (Cliente cliente : clientes) {
            JSONObject clienteJson = new JSONObject();
            clienteJson.put("nombre", cliente.getNombre());
            clienteJson.put("apellido", cliente.getApellido());
            clienteJson.put("cedula", cliente.getCedula());
            clienteJson.put("correo", cliente.getCorreo());
            clienteJson.put("direccion", cliente.getDireccion());
            jsonArray.add(clienteJson);
        }

        try (FileWriter file = new FileWriter(jsonFileName)) {
            file.write(jsonArray.toJSONString());
            file.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void cargarDatosDesdeJson() {
        try (FileReader reader = new FileReader(jsonFileName)) {
            JSONArray jsonArray = (JSONArray) new org.json.simple.parser.JSONParser().parse(reader);

            Iterator<JSONObject> iterator = jsonArray.iterator();
            while (iterator.hasNext()) {
                JSONObject clienteJson = iterator.next();
                String nombre = (String) clienteJson.get("nombre");
                String apellido = (String) clienteJson.get("apellido");
                String cedula = (String) clienteJson.get("cedula");
                String correo = (String) clienteJson.get("correo");
                String direccion = (String) clienteJson.get("direccion");

                Cliente cliente = new Cliente(nombre, apellido, cedula, correo, direccion);
                clientes.add(cliente);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @FXML
    protected void onIngresarButtonClick() {
        agregarCliente();
    }
}
