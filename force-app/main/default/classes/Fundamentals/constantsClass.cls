public with sharing class constantsClass {
    public constantsClass() {

        // Varíavel Constante - Assim como o nome diz, uma varíavel constante não tem seu valor alterado.

        // Definindo uma varíavel
        Decimal piVariable = 3.14159;

        System.debug(piVariable);

        // Atualizando valor da varíavel
        piVariable = 2.14159;

        System.debug(piVariable);

        // Definindo uma constante - Utilizando a palavra reservada "final"
        final Integer PI = 3.14159;

        // Se você inicilizar uma constante sem o valor e adicionar é possível, pois ela somente estará instanciada
        final Decimal PiNull;

        piNull = 3.14159;

        // Ele somente receberá um valor, mas depois de receber um valor, não é possível altera-la depois

    }
}
