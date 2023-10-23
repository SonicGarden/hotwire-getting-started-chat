Rails.application.routes.draw do
  resources :messages, only: %i(index new create edit update destroy) do
    resource :evaluation, only: %i(update), module: :messages
  end
  root 'messages#index'
end
