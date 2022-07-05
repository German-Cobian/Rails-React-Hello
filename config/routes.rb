Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'static#index'
  namespace :api, defaults: { format: 'json' } do
    get 'greetings', to: 'greetings#index'
  end
end
