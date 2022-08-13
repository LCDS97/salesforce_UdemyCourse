import { LightningElement, track } from 'lwc';

export default class ToDoManager extends LightningElement {

    // Track - Propriedades privadas naturalmente não atualizam conforme seu valor muda, para isso utilizamos o track para capturar varíaveis no HTML e mudar conforme JS manipula ele
    // De acordo com atualização do Spring'20, todas as propriedades privadas são reativas e não precisar usar mais o track, entretanto ainda é recomendado usar para objetos no SF onde ocorre a mudanças nesses objetos do Salesforce
    @track time;
    @track greeting;

    @track tarefas = [];

     // Função do Connected Callback é um Metódo do Ciclo de vida do framework do LWC, ele pode ser automaticamente invocado pelo framework
    connectedCallback(){
        
        // Utilizando a função do getTime para popular valores do JS no HTML
        this.getTime();

        // Mocando tarefas para verificar se esta lógica certa
        this.tarefasMock();

        // Método setInterval serve para repetidamente chamar uma função por um determinado intervalo de tempo
        setInterval(() => {
            this.getTime()
        }, 1000 * 60)
    }

    getTime(){
        // Pegando valores da hora Atual
        const date = new Date();
        const hour = date.getHours();
        const min = date.getMinutes();

        // Populando o tempo com os valores atuais e utilizando as funções de conversão
        this.time = `${this.getHour(hour)}:${this.getDoubleDigit(min)} ${this.getMidDay(hour)}`;

        // Atualizando o tempo do componente
        this.setGreeting(hour);
    }

    // Pegando a hora atual para verificar se esta antes ou depois do meio dia
    getHour(hour){
        return hour === 0 ? 12 : hour > 12 ? (hour -12) : hour;
    }

    // Verificando de atribuir o PM ou AM de acordo com a hora do dia
    getMidDay(hour){
        return hour>= 12 ? "PM" : "AM";
    }

    // Colocando um dígito do zero a esquerda para números menores que 10
    getDoubleDigit(digit){
        return digit < 10 ? "0" + digit : digit
    }

    // Escrevendo o cumprimento de acordo com a hora do dia
    setGreeting(hour){
        if(hour >= 0 && hour < 8 ){
            this.greeting = "Boa madrugada!";
        }
        else if(hour >= 8 && hour < 12 ){
            this.greeting = "Bom dia!";
        }
        else if(hour >= 12 && hour <  18){
            this.greeting = "Boa tarde!";
        }
        else {
            this.greeting = "Boa noite!"
        }
    }

    addTarefaHandler(){
        // Pegando valor do input
        const inputBox = this.template.querySelector("lightning-input");


        // Criando propriedades e chaves para uma tarefa
        const tarefa = {
            tarefaId: this.tarefas.length,
            tarefaNome: inputBox.value,
            done: false,
            tarefaData: new Date()
        }

        // Preencher esses valores
        this.tarefas.push(tarefa);
        inputBox.value = "";
    }

    get tarefasProximas(){
        // Verificando caso as tarefas não sejam nulas ou menor que zero, e diferentes de completas para cair na lista de proximas tarefas, caso seja nula atribuir um array vazio
        return this.tarefas && this.tarefas.length ? this.tarefas.filter( tarefa => !tarefa.done) : [];
    }

    get tarefasCumpridas(){
        // Verificando caso as tarefas não sejam nulas ou menor que zero, e diferentes de completas para cair na lista de proximas tarefas, caso seja nula atribuir um array vazio
        return this.tarefas && this.tarefas.length ? this.tarefas.filter( tarefa => tarefa.done) : [];
    }

    tarefasMock(){
        const tarefas = [
            {
                tarefaId: 0,
                tarefaNome: 'Veremos',
                done: false,
                tarefaData: new Date()
            },
            {
                tarefaId: 1,
                tarefaNome: 'Veremos denovo',
                done: false,
                tarefaData: new Date()
            },
            {
                tarefaId: 2,
                tarefaNome: 'Ainda não vi',
                done: false,
                tarefaData: new Date()
            },
            {
                tarefaId: 3,
                tarefaNome: 'Agora to vendo',
                done: true,
                tarefaData: new Date()
            }
        ];
        this.tarefas = tarefas;
    }
}