Rails.application.routes.draw do
  root 'tasks#index'
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task
  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'
  get '/task/:id', to: 'tasks#show'
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy_task
end
