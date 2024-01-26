Rails.application.routes.draw do
  resources :sessions, only: [:create, :show, :update, :destroy]
end
