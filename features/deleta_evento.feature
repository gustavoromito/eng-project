# enconding: utf-8
# language: pt

Funcionalidade: Deletar Evento

	Cenário: Logado no site, vou deletar um evento
		Dado um usuário validado no sistema
		E que esteja logado no site
		E dado um evento que ja tenha sido criado anteriormente de titulo 'Festa no ape'
    	Então eu vou para a listagem dos eventos
		E assim que eu clicar no texto 'Destroy'
    	Então o evento 'Festa no ape' sumirá
