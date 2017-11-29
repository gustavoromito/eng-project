# New-User Feature
# enconding: utf-8
# language: pt

Funcionalidade: Sessão de Usuário do Sistema

	Cenário: O usuário deseja fazer login no sistema
	Dado que sou um usuário válido
	Quando eu vou para a página de Entrar
	E eu digito meu email: 'person1@example.com' e senha: 't123456' e clico em 'Log In'
	Então eu acesso a minha conta no sistema