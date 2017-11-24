# enconding: utf-8
# language: pt

Funcionalidade: Cadastro de Novo Usuário

Cenário: Um novo usuário quer realizar cadastro na aplicação
	Quando eu vou para a página de Cadastro
	E preencho os campos com email:"novousuario@test.com.br", preencho a senha:"123456", preencho a confirmação de senha:"123456" e clico em Cadastrar
	Então eu vou para a página principal logado na conta como novo usuário	