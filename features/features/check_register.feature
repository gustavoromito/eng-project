# enconding: utf-8
# language: pt

Funcionalidade: Registar um novo usário no sistema

Cenário: Preencher os campos de email, password e password confirmation 
	Quando eu vou para a página de registro
	E preencher os campos email, password e confirmar password com:Email: "test@test.com.br", Password: 12345678, Password confirmation: 12345678
	E clicar em "Sign up"
	Então o usuário vai para a página principal logado na conta	