Rails.application.routes.draw do

  resources :abouts
  
  scope "/devise_scope" do
    devise_for :users, controllers: { registrations: "registrations"}
  end

  resources :events do
    post 'unsubscribe', to: 'events#unsubscribe'
    resources :reviews
  end

  resources :users
  resources :user_interest, only: [:create]
  resources :posts
  resources :merits

  root "pages#home"

  get 'my_events', to: 'events#my_events'

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'comments' => 'comments#create', as: "create_comment"
end
