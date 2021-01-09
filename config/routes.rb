Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all the tasks
  get '/tasks', to: 'tasks#index'
  # read one task
  get '/tasks/new', to: 'tasks#new' # display the form
  # create a task
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: :task

  # update a task
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  # delete a task
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete
end
