public with sharing class listClass {
   
   public static void listClass(){

    // Lista - Servem para armazenar valores do mesmo tipo, e sendo ordenados pelo posição do índice e seus valores

    // Declarando uma lista inserindo os valores direto dentro das chaves
    List<Integer> rollNumbersWithNumbers = new List<Integer>{111,222,333};
    System.debug(rollNumbersWithNumbers);

    // Declarando uma lista vazia
    List<Integer> rollNumbers = new List<Integer>{111,222,333};

    // Adicionando valores na lista - Método add
    rollNumbers.add(444);
    rollNumbers.add(555);
    rollNumbers.add(666);
    System.debug('##### Valores Adicionados => ' +rollNumbers);

    // Pegando valores da lista pelo Índice - Método get
    Integer rollOne = rollNumbers.get(1);
    System.debug('##### Valor com get => ' +rollOne);

    // Adicionando item pelo índice - Método add com o valor do índice como primeiro paramêtro
    rollNumbers.add(4,777);
    System.debug('##### Valor Adicionado no Índice 4 => ' +rollNumbers);

    // Pegando tamanho da lista - Método size
    System.debug('##### Tamanho da lista => ' +rollNumbers.size());

    // Removendo item da lista pelo índice - Método remove
    rollNumbers.remove(4);
    System.debug('##### Removendo valor do índice 4 => ' +rollNumbers);
    System.debug('##### Tamanho atual da lista => ' +rollNumbers.size());

    // Atualizando valor da lista pelo índice - Método set
    rollNumbers.set(0,999);
    System.debug('##### Valores Atualizado do índice 0 =>' +rollNumbers);

    // Limpando os valores da lista - Método clear
    rollNumbers.clear();
    System.debug('##### Lista depois de limpar => ' +rollNumbers);
    System.debug('##### Tamanho atual da lista =>' +rollNumbers.size());

   }
}
