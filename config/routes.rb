Rails.application.routes.draw do
  # read all tasks
  get '/tasks', to: 'tasks#index', as: :tasks

  # create
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # read(show) one
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete/Destroy
  delete '/tasks/:id', to: 'tasks#destroy'
end
