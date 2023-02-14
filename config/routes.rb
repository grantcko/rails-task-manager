Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/new', to: 'tasks#new', as: :new
  get '/tasks/:id', to: 'tasks#show', as: :show
  post '/tasks', to: 'tasks#create'
  get '/task/:id', to: 'tasks#show'
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks', to: 'tasks#update'
  # Defines the root path route ("/")
  # root "articles#index"
end
