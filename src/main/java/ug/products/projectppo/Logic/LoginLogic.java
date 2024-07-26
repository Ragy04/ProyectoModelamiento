package ug.products.projectppo.LoginLogic;


import javafx.scene.control.Alert;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import ug.products.projectppo.Classes.Cliente;


import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class LoginLogic {

    public List<Cliente> clientesList = new ArrayList<>();
    private static final String NOMBRE_ARCHIVO_JSON = "src/main/java/ug/products/projectppo/JSON/Clientes.json";

    public void agregarCliente(String nombre, String apellido, String cedula, String correo, String direccion) {
        if (clienteExistenteEnJsonPorCedula(cedula)) {
            mostrarAlerta("Cliente Existente", "El cliente " + nombre +" "+ apellido + " ya existe. Bienvenido!!", Alert.AlertType.INFORMATION);
        } else {
            Cliente nuevoCliente = new Cliente(nombre, apellido, cedula, correo, direccion);

            clientesList.add(nuevoCliente);

            guardarDatosEnJson();

            mostrarAlerta("Éxito", "Cliente agregado con éxito. Bienvenido!!", Alert.AlertType.INFORMATION);
        }
    }

    private boolean clienteExistenteEnJsonPorCedula(String cedula) {
        List<Cliente> clientesEnJson = cargarClientesDesdeJson();

        return clientesEnJson.stream().anyMatch(cliente -> cliente.getCedula().equals(cedula));
    }

    public void eliminarCliente(String cedula) {

        Cliente clienteAEliminar = null;
        for (Cliente cliente : clientesList) {
            if (cliente.getCedula().equals(cedula)) {
                clienteAEliminar = cliente;
                break;
            }
        }
        if (clienteAEliminar != null) {
            clientesList.remove(clienteAEliminar);
        }

        List<Cliente> clientesEnJson = cargarClientesDesdeJson();
        Cliente clienteEnJsonAEliminar = null;
        for (Cliente cliente : clientesEnJson) {
            if (cliente.getCedula().equals(cedula)) {
                clienteEnJsonAEliminar = cliente;
                break;
            }
        }
        if (clienteEnJsonAEliminar != null) {
            clientesEnJson.remove(clienteEnJsonAEliminar);
            guardarClientesRestantesEnJson(clientesEnJson);
        }
    }

    private void guardarClientesRestantesEnJson(List<Cliente> clientes) {
        JSONArray jsonArray = Cliente.convertirClientesAJsonArray(clientes);
        try (FileWriter writer = new FileWriter(NOMBRE_ARCHIVO_JSON)) {
            writer.write(jsonArray.toJSONString());
            mostrarAlerta("Cliente eliminado", "Su cliente ha sido eliminado. Gracias por preferirnos. Esperamos que regrese pronto.",Alert.AlertType.INFORMATION);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Cliente verificarCliente(String cedula) {
        List<Cliente> clientesEnJson = cargarClientesDesdeJson();
        for (Cliente cliente : clientesEnJson) {
            if (cliente.getCedula().equals(cedula)) {
                for (Cliente clienteEnJson : clientesEnJson) {
                    if (clienteEnJson.getCedula().equals(cedula)) {
                        return cliente;
                    }
                }
                return null;
            }
        }
        return null;
    }

    public void guardarDatosEnJson() {
        List<Cliente> clientesEnJson = cargarClientesDesdeJson();

        for (Cliente clienteGlobal : clientesList) {
            boolean cedulaExistente = clientesEnJson.stream().anyMatch(cliente -> cliente.getCedula().equals(clienteGlobal.getCedula()));

            if (!cedulaExistente) {
                clientesEnJson.add(clienteGlobal);
            }
        }

        JSONArray jsonArray = Cliente.convertirClientesAJsonArray(clientesEnJson);

        try (FileWriter writer = new FileWriter(NOMBRE_ARCHIVO_JSON)) {
            writer.write(jsonArray.toJSONString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Cliente verificarClienteEnJson(String cedula) {
        List<Cliente> clientesEnJson = cargarClientesDesdeJson();

        for (Cliente cliente : clientesEnJson) {
            if (cliente.getCedula().equals(cedula)) {
                return cliente;
            }
        }

        return null;
    }
    
    private void mostrarAlerta(String titulo, String mensaje, Alert.AlertType tipoAlerta) {
        Alert alert = new Alert(tipoAlerta);
        alert.setTitle(titulo);
        alert.setHeaderText(null);
        alert.setContentText(mensaje);
        alert.showAndWait();
    }

    public List<Cliente> cargarClientesDesdeJson() {
        JSONParser jsonParser = new JSONParser();
        JSONArray jsonArray = new JSONArray();

        try (FileReader reader = new FileReader(NOMBRE_ARCHIVO_JSON)) {
            Object obj = jsonParser.parse(reader);

            if (obj instanceof JSONArray) {
                jsonArray = (JSONArray) obj;
            }

        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }

        return Cliente.convertirJsonArrayAClientes(jsonArray);
    }


    private void actualizarDatosEnJson() {
        List<Cliente> clientesEnJson = cargarClientesDesdeJson();
        JSONArray jsonArray = Cliente.convertirClientesAJsonArray(clientesEnJson);

        if (!jsonArray.equals(cargarClientesDesdeJson())) {
            try (FileWriter writer = new FileWriter(NOMBRE_ARCHIVO_JSON)) {
                writer.write(jsonArray.toJSONString());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

