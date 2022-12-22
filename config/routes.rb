Rails.application.routes.draw do
  root 'lab9#input'
  post '/view', to: 'lab9#view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
