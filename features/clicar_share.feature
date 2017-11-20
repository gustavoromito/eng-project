# enconding: utf-8
# language: pt

Funcionalidade: Clicar no botao de twitter e abrir blank

Cenário: Abrir link em blank
	Quando eu vou para a página de eventos
  E clicar em "New Event"
	E preencher os campos latitude, longitude e endereço com: latitude: -23.5874162, longitude: -46.6576336, endereco: "Parque Ibirapuera"
	E clicar em "Create Event"
	Então o usuário vai para a página do evento para "eventos/1"
  E usuario clica no botao "ssb-icon ssb-twitter"
  E o link possui target "_blank"
