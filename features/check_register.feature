# enconding: utf-8
# language: pt

Funcionalidade: Permitir um novo usuário fazer o cadastro

Cenário: O usuário vai preencher os campos de email, senha e confirmação de senha para realizar o cadastro
	Quando eu vou para a página de cadastro
	E preencho o email:joao@usp.com.br, preencho a senha:"123456", preencho a confirmação de senha:"123456" e clico em "Cadastrar"
	Então eu vou para a página principal logado na conta como novo usuário	