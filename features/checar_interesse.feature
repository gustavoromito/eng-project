# enconding: utf-8
# language: pt

Funcionalidade: Verificar se interesse em evento funciona
	
	Cenário: O usuário vai se logar no sistema criar um evento e se interessar por ele
		Dado que sou usuário do sistema
		E que estou logado no sistema
		Quando vou para a página eventos
		E apertar "New Event"
		E preencher o campo endereço com: "Shopping Interlagos"
		E apertar "Create Event"
		Então o usuário é redirecionado para "eventos/1"
		E clica em "ESTOU INTERESSADO!!!"
		Então vou para a página "Meus Eventos"
		Então quando visito a página "Meus Eventos" o evento aparece lá