public with sharing class operatorClass {
    public static void operatorClass() {


        // Operador de Atribuição - Com o sinal "=", ele atribui a expressão da direita para a varíavel da esquerda
        Integer x = 5;
        System.debug('Operador de Atribuição ' +x);
        
        // Operador de Adição - Ele utiliza o operador da Atribuição, com o operador "+", ele adiciona da expressão da direita para a varíavel da esquerda
        x = x + 5;
        System.debug('Operador de Adição ' +x);
        
        // Operador de Subtração - Com o operador "-", ele subtrai a expressão da direita para a varíavel da esquerda
        x = x - 4;
        System.debug('Operador de Subtração '+ x);
        
        // Operador de Multiplicação - Com o operador "*", ele multiplica a expressão da direita para a varíavel da esquerda
        x = x * 2;
        System.debug('Operador de Multiplicação  '+ x);
        
        // Operador de Divisão - Com o operador "/", ele divide a expressão da direita para a varíavel da esquerda
        x = x / 3;
        System.debug('Operador de Divisão ' +x);

        // Operador de incrementação - Utiliza o sinal de "++", ao lado da varíavel para incrementar seu valor
        x++;
        System.debug('Operador de incrementação ' + x);

        // Operador de decrementação - Utiliza o sinal de "--", ao lado da varíavel para decrementar seu valor
        x--;
        System.debug('Operador de decrementação ' +x);

        // Operador de adição incrementador - Utiliza o sinal de "+-", ao lado da varíavel para adicionar e incrementar seu valor na expressão da direita para a varíavel esquerda
        x += 5;
        System.debug('Operador de adição incrementador ' +x);

        // Operador de subtração decrementador - Utiliza o sinal de "-=", ao lado da varíavel para adicionar e decrementar seu valor na expressão da direita para a varíavel esquerda
        x -= 5;
        System.debug('Operador de subtração decrementador ' +x);

        // Operador de multiplicador incrementador - Utiliza o sinal de "*=", ao lado da varíavel para adicionar e multiplicar seu valor na expressão da direita para a varíavel esquerda
        x *= 5;
        System.debug('Operador de multiplicador incrementador ' +x);

        // Operador de divisão decrementador - Utiliza o sinal de "/=", ao lado da varíavel para adicionar e decrementar seu valor na expressão da direita para a varíavel esquerda
        x /= 5;
        System.debug('Operador de divisão decrementador ' +x);

        // Operador de adição em string
        String hello = 'Hello';
        String world = 'World';

        String helloWorld = hello + ' ' + world;

        System.debug('Concatenação de Strings: ' + helloWorld);

        // Operadores lógicos
        Boolean first = true;
        Boolean second = false;

        Boolean result;

        // Operador "E" - AND - Utiliza o operador "&" para declaração AND
        result = first && second;
        System.debug('AND Operador ' +result);
        
        // Operador "OU" - OR - Utiliza o operador || para declaração OR
        result = first || second;
        System.debug('OR Operador ' +result);
        
        // Operador de Equalidade - Utiliza o operador "==" para comparar dois valores - True Para valores iguais False para valores diferentes
        result = (first == second);
        System.debug('Operador de Equalidade ' +result);
        
        // Operador Menor que - Utiliza o operador "<" para comparar se um valor é menor que outro
        result = (5 < 6);
        System.debug('Operador Menor que: 5 é Menor que 6 - ' +result);
        
        // Operador Maior que - Utiliza o operador ">" para comparar se um valor é maior que outro
        result = (5 > 6);
        System.debug('Operador Maior que: 5 é Maior que 6 - ' +result);
        
        // Operador Menor ou igual que - Utiliza o operador "<=" para comparar se um valor é menor que outro
        result = (5 <= 6);
        System.debug('Operador Menor ou igual que: 5 é Menor ou igual que 6 - ' +result);
        
        // Operador Maior ou Igual que - Utiliza o operador ">=" para comparar se um valor é maior que outro
        result = (6 >= 6);
        System.debug('Operador Maior ou Igual que: 6 é Maior ou igual que 6 - ' +result);
        
        // Operador NOT - Todo true é false e todo false é true - Utiliza o operador "!" antes da varíavel e seu valor booleano sera de false para true ou true para false
        System.debug('Antes do Operador NOT' +first);
        first = !first;
        System.debug('Depois do Operador NOT' +first);

        // Operador Ternário - Primeira é a condição, depois é usado o operador "?" para definir o valor True, e após operador ":" é definido o valor para False
        String greeting = '';
        Datetime hour = Datetime.now();

        // Se a hora for menor que 12, então o greeting vai ser "Bom Dia"
        // Se não será "Boa tarde"

        greeting = (hour.hour() < 12) ? 'Bom dia' : 'Boa tarde';
        System.debug('Olá, agora são ' +hour.hour() +' então tenha um '  +greeting);
    }
}
