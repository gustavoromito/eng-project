Rails.application.routes.draw do
  resources :abouts
  
  resources :events do
    post 'unsubscribe', to: 'events#unsubscribe'
  end
    
  scope "/devise_scope" do
    devise_for :users, controllers: { registrations: "registrations"}
	end
	
	resources :users
  resources :user_interest, only: [:create]

  resources :posts do 
  member do
    put "like", to: "links#upvote"
    put "dislike", to: "links#downvote"
  end
end

  root "pages#home"

  get 'my_events', to: 'events#my_events'

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
