Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 # As a user, I can list tasks
  get 'tasks', to: 'tasks#index', as: :tasks
  # As a user, I can add a new task
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :task_new
  # As a user, I can edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
    # As a user, I can view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: :task


  patch 'tasks/:id', to: 'tasks#update'
  # As a user, I can remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
