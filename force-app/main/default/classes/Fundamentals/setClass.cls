public with sharing class setClass {

    public static void setClass() {

    // Set - Uma lista não ordenada, de valores únicos pelo mesmo tipo
    Set<Integer> rollNumbers = new Set<Integer>();

    // Adicionando valores na lista Set - Método add
    rollNumbers.add(444);
    rollNumbers.add(555);
    rollNumbers.add(666);
    System.debug('##### Valores Adicionados => ' +rollNumbers);

    // Testando adicionar com um valor duplicado na lista set
    rollNumbers.add(666);
    System.debug('##### Valor duplicado adicionado mas não aparece na lista => ' +rollNumbers);

    // Checar se a lista set possuí um item - Método contains
    System.debug('##### Verificando se existe valor 555 => ' +rollNumbers.contains(555));
    System.debug('##### Verificando se existe valor 777 => '+rollNumbers.contains(777));

    // Deletando um item - Método remove
    rollNumbers.remove(666);
    System.debug('##### Verificando lista após remoção do 666 => ' +rollNumbers);

    // Pegando tamanho da lista Set - Método size
    System.debug('##### Verificando tamanho da lista => ' +rollNumbers.size());

    // Verificando se a lista set esta vazia - Método isEmpty
    System.debug('##### Verificando se lista esta vazia => ' +rollNumbers.isEmpty());

    // Removendo todos os itens - Método clear
    rollNumbers.clear();
    System.debug('##### Limpando a lista e verificando se está vazia => ' +rollNumbers.isEmpty());

    }
}
