Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :locallers, only: %i[index show new create edit update] do
    resources :meetings, only: %i[create]
  end

  resources :meetings, only: %i[destroy]

  resources :chats, only: %i[index show create] do
    resources :messages, only: :create
  end

  get '/dashboard', to: 'dashboards#profile'
  get '/dashboard/:id', to: 'dashboards#show', as: "profile"

end
