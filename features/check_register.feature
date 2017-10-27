# enconding: utf-8
# language: pt

Funcionalidade: Permitir usuário autenticado acessar a Rede Social

@javascript
Cenário: O usuário vai preencher os campos de email, senha e fazer o login
	Quando eu vou para a página de login
	E preencho o email:joao@usp.com.br, preencho a senha:"123456"e clico em "Entrar"
	Então eu vou para a página principal logado na conta	