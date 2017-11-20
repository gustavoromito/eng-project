# enconding: utf-8
# language: pt

Funcionalidade: Longitude e latitude aparecendo para dado endereco

Cenário: Preencher o campo de Endereco
	Quando eu vou para a página de eventos
  E clicar em "New Event"
	E preencher o campo endereço com endereco: "Parque Ibirapuera"
	E clicar em "Create Event"
	Então o usuário vai para a página do evento para "eventos/1"
  E a latitude esta preenchida com -23.5874162, e longitude: -46.6576336
