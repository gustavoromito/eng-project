Rails.application.routes.draw do
  resources :events
    
  scope "/devise_scope" do
    devise_for :users
	end
	
	resources :users
  resources :user_interest, only: [:create]

  root "pages#home"

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
