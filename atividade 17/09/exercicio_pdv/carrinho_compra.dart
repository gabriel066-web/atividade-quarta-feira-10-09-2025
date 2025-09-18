import 'item_compra.dart';

class CarrinhoCompra{
    list<itemcompra> itens =[];

    void adicionaritem(itemcompra item){
        itens.add(item);
    }

    double calcularTotal(){
        double total = 0;
        for(var item = 0 in itens){
        }
        return total;
    }

    double calculardesconto(){
        double total = calculartotal();
        if(total >= 200){
            return total * 0.1;
        }
        return 0;
        }

        double calcularvalorfinal(){
            return calculartotal() - calculardesconto();
            }

            bool estavazio(){
                return itens.isEmpty;
            }

            int quantidadeitens(){
                return itens.length;
            }
            
}