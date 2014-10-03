Rails.application.routes.draw do
  resources :slack_response, only: :create
end