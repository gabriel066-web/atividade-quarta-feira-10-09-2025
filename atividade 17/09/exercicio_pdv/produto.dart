vold main () {

}

class produto{
    string nome;
    double valorUnitario;

    produto(this.nome this.valorUnitario);

    @overrida
    string toString(){
        return 'produto: $nome - valor: R\$ $(valorUnitario.toStringAsFixeed(2))'; 
    }
} 