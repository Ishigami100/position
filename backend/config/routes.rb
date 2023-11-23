Rails.application.routes.draw do
  resources :position, only: [:index, :show, :create]
end
