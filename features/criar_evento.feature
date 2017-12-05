# enconding: utf-8
# language: pt

Funcionalidade: Criação de Evento

	Cenário: Como usuário logado, quero criar um evento
		Dado um usuário valido
		E que está logado em sua conta
		Quando eu clicar para criar um evento
		E preencher os campos de Title com 'Casa do hamburguer', Description com 'Vamos comer hamburguer hoje' e Endereço com 'Casa do Joao'
		E salvar o formulario
    Então o evento criado possuira o texto de 'Event was successfully created.'
    E terá aqueles campos preenchidos
