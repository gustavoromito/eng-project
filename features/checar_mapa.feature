# enconding: utf-8
# language: pt

Funcionalidade: Cadastrar um novo endereco em um evento

Cenário: Preencher os campos de Latitude, Longitude e Endereco
	Quando eu vou para a página de eventos
  E clicar em "New Event"
	E preencher os campos latitude, longitude e endereço com: latitude: -23.5874162, longitude: -46.6576336, endereco: "Parque Ibirapuera"
	E clicar em "Create Event"
	Então o usuário vai para a página do evento para "eventos/1"
