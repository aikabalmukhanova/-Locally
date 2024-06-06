Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :locallers, only: %i[index show new create]
  resources :chats, only: :show do
    resources :messages, only: :create
  end

  get '/dashboard', to: 'dashboards#show'

end
