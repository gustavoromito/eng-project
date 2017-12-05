# enconding: utf-8
# language: pt

Funcionalidade: Verificar se interesse em evento funciona
	
	Cenário: O usuário vai se interessar por um evento
		Dado que sou um usuário válido
		E que estou logado na minha conta
		Quando eu vou para a página de eventos
		E apertar "New Event"
		E preencher o campo endereço com endereco: "Parque Ibirapuera"
		E apertar "Create Event"
		Então o usuário é redirecionado para "eventos/1"
		E clica em "ESTOU INTERESSADO!!!"
		Então vou para a página "Meus Eventos"
		Então quando visito a página "Meus Eventos" o evento aparece lá