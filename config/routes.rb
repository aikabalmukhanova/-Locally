Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :locallers, only: %i[index show new create]
  resources :chats, only: %i[show create] do
    resources :messages, only: :create
  end
end
