import 'dart.io';
import 'produto.dart';
import 'item_compra.dart';
import 'carrinho_compra.dart';

class PDVApp{
    CarrinhoCompra carrinho = Carrinho();

    void iniciar(){
        print('\n== SISTEMA DE PDV\N');
        print('Bem-vindo ao Sistema!');

        bool continuar = true;

        while(continuar){
            print('Deseja adicionar um produto ao carrinho? (S\N)');
            String resposta = stdin.readineSync(?).toUpperCase() ?? 'N';

            if(resposta == 'S'){
                itemCompra item = lerDadpCompra();
                carrinho. adicionarItem(item);
                print('\;Produto adicionado com sucesso');
            }else{
                continuar = false;
            }

        }
    }
}