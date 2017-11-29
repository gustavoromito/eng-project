# enconding: utf-8
# language: pt

Funcionalidade: Seleciona Evento por Categoria

	Cenário: Usuário pode selecionar eventos através da categoria
	Dado que sou um usuário válido
	E que estou logado na minha conta
	Dado que exista um evento válido com a categoria 'Balada'
	Quando eu vou para a página de eventos
	E clico no link com o nome 'Balada'
	Então eu vejo eventos cuja a categoria é 'Balada'