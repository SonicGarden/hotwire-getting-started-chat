Rails.application.routes.draw do
  resources :messages, only: %i(index new create edit update destroy)
  root 'messages#index'
end
