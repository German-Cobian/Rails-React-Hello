Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    get 'greetings', to: 'greetings#index'
  end
  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
  # Forward root to StaticController#index
  root 'static#index'
end
