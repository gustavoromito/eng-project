# enconding: utf-8
# language: pt

Funcionalidade: Criação de um post de usuário

Cenário: O usuário vai fazer um novo post na sua página
	Quando eu vou para a página de posts
	E clico em "New Post"
	Então eu vou para a página de criação de post
	E faço um post com o contéudo de "Bom dia" e clico em "post"
	Então quando eu visito a página de posts novamente o meu post está listado como um dos posts
