Rails.application.routes.draw do
  resources :positions, only: [:index, :show, :create]
end
