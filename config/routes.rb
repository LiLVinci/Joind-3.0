Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get "pages/about"
  get "pages/feedback"

  
  resources :users, only: [:show, :edit, :update]

  resources :requests, only: [:index, :show, :edit, :update] do
    member do
      patch :validate
    end
  end

  resources :events do
    resources :requests, only: [:new, :create]
  end

  get "events_overview", to: "users#events_overview"

  resources :chats, only: :show do
    resources :messages, only: :create
  end
end
