public with sharing class mapClass {
    
    
    public static void mapClass(){

        // Map é uma coleção de itens com uma chave única e valores que populam esse map

        Map<Integer,String> class2020 = new Map<Integer,String>();

        //Populando o map com um valor novo - Método put
        class2020.put(1,'Henry');
        
        System.debug('Adicionando um item ao map: ' +class2020);

        // Adicionando 3 itens no map - Método put
        class2020.put(1,'Henry');
        class2020.put(2,'Alex');
        class2020.put(3,'Jenny');

        System.debug('#### Adicionando 3 itens no map: '  +class2020);

        // Atualizando/Sobrescrevendo valor - Método put com ele ja sobrescreve o valor
        class2020.put(1, 'Henrique');
        System.debug('#### Sobrescrevendo o valor: ' +class2020);

        // Retornar um valor - Método get
        System.debug('Retornando valor do map com a chave 1: ' +class2020.get(1));
        
        //Removendo um item do map - Método remove
        class2020.remove(3);
        System.debug('Removendo valor e a chave do map com a chave 3: ' +class2020.remove(3));

        // Pegando todos as chaves - Método keySet
        Set<Integer> allKeys = class2020.keySet();
        System.debug('Pegando todas as chaves do map' +allKeys);

        // Pegando todos os valores do map - Método values
        List<String> allValues = class2020.values();
        System.debug('Pegando todos os valores do map' +allValues);

        // Checar se um map tem uma chave - containsKey
        System.debug(class2020.containsKey(1));

    }

}
