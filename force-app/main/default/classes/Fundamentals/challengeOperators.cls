public with sharing class challengeOperators {

    // Desafio da Pizza

    /* Ross, Chandler e Joey pediram pizza e precisam pagar as contas pela número de fatias
    
    Preço Fatia da Pizza:

    1 Fatia - $8 Dolares cada fatia
    2-3 Fatias - $7 Dolares cada fatia
    >3 Fatia - $6 Dolares cada fatia

    Ross - Pediu 3 fatias
    Chandler - Pediu 1 fatia
    Joey - Pediu 4 fatias
    
    */

    public static void challengeOperators() {

        Integer pizzaSlice;

        Decimal joeySlices = putPriceSlice(4);
        Decimal rossSlices = putPriceSlice(3);
        Decimal chandlerSlices = putPriceSlice(1);

        Decimal result = joeySlices + rossSlices + chandlerSlices;

        System.debug('Joey has to pay the value of ' +joeySlices);
        System.debug('Ross has to pay the value of ' +rossSlices);
        System.debug('Chandler has to pay the value of ' +chandlerSlices);
        System.debug('and the total bill value is ' +result);
    }

    public static Decimal putPriceSlice(Integer pizzaSlice){
       
        Decimal priceSlice;
            
        if(pizzaSlice == 1){
            priceSlice = 8;
            return pizzaSlice * priceSlice;
        }
        else if(pizzaSlice >= 2 && pizzaSlice <= 3){
            priceSlice = 7;
            return pizzaSlice * priceSlice;
        }
        else{
            priceSlice = 6;
            return pizzaSlice * priceSlice;
        }
    }
}
