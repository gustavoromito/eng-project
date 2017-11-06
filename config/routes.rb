Rails.application.routes.draw do
  resources :abouts
  resources :posts
  
  resources :events do
    post 'unsubscribe', to: 'events#unsubscribe'
  end
    
  scope "/devise_scope" do
  #  devise_for :users, controllers: { registrations: "registrations"}
    ###GABRIEL
    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
	end
	
	resources :users
  resources :user_interest, only: [:create]
  #GABRIEL
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  ###

  root "pages#home"

  get 'my_events', to: 'events#my_events'

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/google_oauth2/callback', to: 'sessions#create'
  #get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  
  get 'signout', to: 'sessions#destroy', as: 'signout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
