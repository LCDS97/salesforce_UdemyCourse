## Salesforce Udemy Course


### 1 - Apex Fundamentals

[x] - List class
[x] - Set class
[x] - Map class

[x] - Challenge 01 - Print all posts in a collection



### LWC - Crash Course

[Tutorial Youtube - LWC Introdutório](https://youtu.be/bLyAsIeDZtw)


Autorizar o dev Hub nas configurações da Org

Criar uma scratch org com o CTRL+SHIFT+P

Apóis isso instalar o plugin para ter um localhost do LWC com o comando:

sfdx plugins:install @salesforce/lwc-dev-server

Para iniciar o localhost:

- sfdx force:lightning:lwc:start

O componente ira ficar disponivel em uma porta local do computador:

Por padrão vem no local

- https://localhost:3333

connectedCallback - É um método do ciclo de vida do framework do LWC, ele pode ser automaticamente invocado pelo framework
setInterval - É um método que serve para repetidamente chamar uma função por um determinado intervalo de tempo

O método filtro cria um novo array para todos os elementos que passaram no teste

Propriedades publicas são reativas, se o valor de uma propriedade pública mudar, o componente ira se renderizar, para expor uma propriedade publica, utiliza o decorador:
@api

Exemplo:

- No componente pai toDoManager estou passando valores do js dentro do componente filho toDoItem através do html, então para acessar esses valores do pai, eu exponho eles no js do filho

(cacheable=true):
- Um response com cache é tratado como data recente por somente 30 segundos, se ele fizer uma chamada de novo depois dos 30 segundos, é utilizado na chamada o cache com a ultima resposta do servidor

Promise:

- Um objeto de Promessa representa se o evento foi completado ou falhado de uma operação assíncrona e seu valor resultante.

