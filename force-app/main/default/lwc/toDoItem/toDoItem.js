import { LightningElement, api } from 'lwc';

export default class ToDoItem extends LightningElement {
    @api tarefaId;
    @api tarefaNome;
    @api done = false;

}