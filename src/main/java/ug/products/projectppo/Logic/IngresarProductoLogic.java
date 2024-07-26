package ug.products.projectppo.Logic;

import javafx.scene.control.Alert;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import ug.products.projectppo.Classes.Producto;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
public class IngresarProductoLogic {
    public List<Producto> productosList = new ArrayList<>();
    private static final String NOMBRE_ARCHIVO_JSON = "src/main/java/ug/products/projectppo/JSON/Productos.json";

    public void ingresarProducto(Producto producto) {
        if (productoExistenteEnJsonPorCodigo(producto.getCodigo())) {
            mostrarAlerta("Producto Existente", "El producto con código " + producto.getCodigo() + " ya existe.", Alert.AlertType.INFORMATION);
        } else {
            productosList.add(producto);
            guardarDatosEnJson();
            mostrarAlerta("Éxito", "Producto ingresado con éxito.", Alert.AlertType.INFORMATION);
        }
    }

    private boolean productoExistenteEnJsonPorCodigo(String codigo) {
        List<Producto> productosEnJson = cargarProductosDesdeJson();
        return productosEnJson.stream().anyMatch(producto -> producto.getCodigo().equals(codigo));
    }

    public void eliminarProducto(String codigo) {
        Producto productoAEliminar = null;
        for (Producto producto : productosList) {
            if (producto.getCodigo().equals(codigo)) {
                productoAEliminar = producto;
                break;
            }
        }
        if (productoAEliminar != null) {
            productosList.remove(productoAEliminar);
        }

        List<Producto> productosEnJson = cargarProductosDesdeJson();
        Producto productoEnJsonAEliminar = null;
        for (Producto producto : productosEnJson) {
            if (producto.getCodigo().equals(codigo)) {
                productoEnJsonAEliminar = producto;
                break;
            }
        }
        if (productoEnJsonAEliminar != null) {
            productosEnJson.remove(productoEnJsonAEliminar);
            guardarProductosRestantesEnJson(productosEnJson);
        }
    }

    private void guardarProductosRestantesEnJson(List<Producto> productos) {
        JSONArray jsonArray = Producto.convertirProductosAJsonArray(productos);
        try (FileWriter writer = new FileWriter(NOMBRE_ARCHIVO_JSON)) {
            writer.write(jsonArray.toJSONString());
            mostrarAlerta("Producto eliminado", "El producto ha sido eliminado.", Alert.AlertType.INFORMATION);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Producto obtenerProducto(String codigo) {
        List<Producto> productosEnJson = cargarProductosDesdeJson();
        return productosEnJson.stream()
                .filter(producto -> producto.getCodigo().equals(codigo))
                .findFirst()
                .orElse(null);
    }

    public void guardarDatosEnJson() {
        List<Producto> productosEnJson = cargarProductosDesdeJson();

        for (Producto productoGlobal : productosList) {
            boolean codigoExistente = productosEnJson.stream().anyMatch(producto -> producto.getCodigo().equals(productoGlobal.getCodigo()));

            if (!codigoExistente) {
                productosEnJson.add(productoGlobal);
            }
        }

        JSONArray jsonArray = Producto.convertirProductosAJsonArray(productosEnJson);

        try (FileWriter writer = new FileWriter(NOMBRE_ARCHIVO_JSON)) {
            writer.write(jsonArray.toJSONString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void mostrarAlerta(String titulo, String mensaje, Alert.AlertType tipoAlerta) {
        Alert alert = new Alert(tipoAlerta);
        alert.setTitle(titulo);
        alert.setHeaderText(null);
        alert.setContentText(mensaje);
        alert.showAndWait();
    }

    public List<Producto> cargarProductosDesdeJson() {
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

        return Producto.convertirJsonArrayAProductos(jsonArray);
    }

    public void modificarProductoEnJson(Producto productoModificado) {

        List<Producto> productosEnJson = cargarProductosDesdeJson();
        boolean modificadoExitosamente = false;

        for (int i = 0; i < productosEnJson.size(); i++) {
            Producto productoExistente = productosEnJson.get(i);
            if (productoExistente.getCodigo().equals(productoModificado.getCodigo())) {
                productosEnJson.set(i, productoModificado);
                modificadoExitosamente = true;
                break;
            }
        }

        JSONArray jsonArray = Producto.convertirProductosAJsonArray(productosEnJson);

        try (FileWriter writer = new FileWriter(NOMBRE_ARCHIVO_JSON)) {
            writer.write(jsonArray.toJSONString());
            if (modificadoExitosamente) {
                mostrarAlerta("Éxito", "Producto modificado con éxito.", Alert.AlertType.INFORMATION);
            } else {
                mostrarAlerta("Error", "No se pudo encontrar el producto para modificar.", Alert.AlertType.ERROR);
            }
        } catch (IOException e) {
            e.printStackTrace();
            mostrarAlerta("Error", "Ocurrió un error al modificar el producto.", Alert.AlertType.ERROR);
        }
    }
}
