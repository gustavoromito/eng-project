# enconding: utf-8
# language: pt

Funcionalidade: Cadastrar um novo endereco em um evento

Cenário: Preencher os campos de Latitude, Longitude e Endereco
	Quando Vou para a pagina dos eventos
  E clico no botao de "New Event"
	E preencher os campos latitude, longitude e endereço com: latitude: -23.5874162, longitude: -46.6576336, endereco: "Parque Ibirapuera"
	E clicar no botao de criar evento
	Então a pagina de eventos "1" existe
