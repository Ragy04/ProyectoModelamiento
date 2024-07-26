package ug.products.projectppo.Classes;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import ug.products.projectppo.Logic.IngresarProductoLogic;

import java.util.ArrayList;
import java.util.List;

public class Producto {

    private String codigo;
    private String nombre;
    private String descripcion;
    private double precio;
    private int stock;

    public Producto(String codigo, String nombre, String descripcion, double precio, int stock) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.stock = stock;
    }

    public static JSONArray convertirProductosAJsonArray(List<Producto> productos) {
        JSONArray jsonArray = new JSONArray();
        for (Producto producto : productos) {
            jsonArray.add(producto.convertirProductoAJson());
        }
        return jsonArray;
    }

    public static List<Producto> convertirJsonArrayAProductos(JSONArray jsonArray) {
        List<Producto> productos = new ArrayList<>();
        for (Object obj : jsonArray) {
            if (obj instanceof JSONObject) {
                productos.add(convertirJsonAProducto((JSONObject) obj));
            }
        }
        return productos;
    }

    private static Producto convertirJsonAProducto(JSONObject jsonProducto) {
        String codigo = (String) jsonProducto.get("codigo");
        String nombre = (String) jsonProducto.get("nombre");
        String descripcion = (String) jsonProducto.get("descripcion");
        double precio = (double) jsonProducto.get("precio");
        int stock = ((Long) jsonProducto.get("stock")).intValue();

        return new Producto(codigo, nombre, descripcion, precio, stock);
    }

    public JSONObject convertirProductoAJson() {
        JSONObject jsonProducto = new JSONObject();
        jsonProducto.put("codigo", this.codigo);
        jsonProducto.put("nombre", this.nombre);
        jsonProducto.put("descripcion", this.descripcion);
        jsonProducto.put("precio", this.precio);
        jsonProducto.put("stock", this.stock);
        return jsonProducto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public static void actualizarDatosEnJson(Producto producto) {
        JSONArray productosArray = cargarProductosDesdeJson();

        for (int i = 0; i < productosArray.size(); i++) {
            JSONObject jsonProducto = (JSONObject) productosArray.get(i);
            if (jsonProducto.get("codigo").equals(producto.getCodigo())) {
                jsonProducto.put("stock", producto.getStock());
                break;
            }
        }

        guardarDatosEnJson(productosArray);
    }

    @Override
    public String toString() {
        return "Producto{" +
                "codigo='" + codigo + '\'' +
                ", nombre='" + nombre + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", precio=" + precio +
                ", stock=" + stock +
                '}';
    }
}