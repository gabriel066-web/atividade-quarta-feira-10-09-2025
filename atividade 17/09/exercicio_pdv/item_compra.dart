import 'produto.dart';

class ItemCompra{
    Produto produto;
    int quantidade;

    ItemComprar (this.produto, this.quantidade);

    double calcularSubTotal(){
        return quantidade * produto.valorUnitario;
    }

    @override
    string toString(){
        return '${produto.nome} - ${quantidade} unid. X R\$ ${produto.valorUnitario.toStringAsFixed(2)} = R\$ ${calcularSubTotal().toStringAsFixed(2)}';  
    }
}
