# New-User Feature
# enconding: utf-8
# language: pt

Funcionalidade: Sessão de Usuário do Sistema

	Cenário: O usuário deseja fazer login no sistema
	Dado que sou um usuário válido
	Quando eu vou para a página de Entrar
	E eu digito meu email: 'test@test.com.br' e senha: '1234567' e clico em 'Entrar'
	Então eu acesso a minha conta no sistema