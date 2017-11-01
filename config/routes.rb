Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'sessions#new'
  root to: 'pages#show', page: 'welcome'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :chats, except: [:new] do
    resources :messages, only: [:create, :destroy], shallow: true
  end

  get '/pages/:page', to: 'pages#show'

  get '/login', to: 'sessions#new'
end
