# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks/new', to: 'tasks#new' # Create
  post 'tasks', to: 'tasks#create' # Create

  get 'tasks', to: 'tasks#index' # Read all
  get 'tasks/:id', to: 'tasks#show', as: 'task' # Read one

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
