import { LightningElement, api } from 'lwc';

export default class ToDoItem extends LightningElement {
    @api tarefaId;
    @api tarefaNome;
    @api done = false;


    // Verificando pela variavel booleane done, se a tarefa é próxima tarefa ou completa, ele ira aplicar a classe especifica para capturar o valor no CSS
    get verificarTarefa(){
        return this.done ? "tarefa completa" : "proxima tarefa"
    }

}