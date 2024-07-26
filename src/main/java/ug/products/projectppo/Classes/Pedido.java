package ug.products.projectppo.Classes;

import java.util.List;

public class Pedido {
    private Cliente cliente;
    private List<ItemCompra> itemsComprados;
    private double total;

    public Pedido(Cliente cliente, double total, List<ItemCompra> itemsComprados) {
        this.cliente = cliente;
        this.total = total;
        this.itemsComprados = itemsComprados;
    }
}
