Rails.application.routes.draw do
#ORIGINAL
# 	scope "/devise_scope" do
#  		devise_for :users
#	end
#	
#	resources :users
#
#  	root "pages#home"
#
# 	get 'auth/facebook/callback', to: 'sessions#create'
#  	get 'auth/failure', to: redirect('/')
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#Gabriel
  	scope "/devise_scope" do
  		devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  	end
	
	get 'auth/:provider/callback', to: 'sessions#create'
  	get 'auth/failure', to: redirect('/')
  	get 'signout', to: 'sessions#destroy', as: 'signout'

  	resources :sessions, only: [:create, :destroy]
  	resource :home, only: [:show]
  	resources :users

  	root "pages#home"

end
