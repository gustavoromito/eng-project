# Search-Bar Feature
# enconding: utf-8
# language: pt

Funcionalidade: Barra de Pesquisa
	
	Cenário: Como um usuário eu quero procurar um evento pelo seu nome
		Dado que sou um usuário válido
		E que estou logado na minha conta
		Quando eu quero encontrar um evento pelo nome dele na página de eventos
		Dado que há um evento com nome 'Baladinha'
		Quando eu insiro 'Baladinha' na barra de pesquisa e aperto 'Buscar'
		Então eu espero ver 'Baladinha' na página de eventos