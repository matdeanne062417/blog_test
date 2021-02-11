Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do 
    resources :tasks
  end

  root 'tasks#today'

  # get '/categories' => 'categories#index'
  # get '/categories/new' => 'categories#new', as: 'new_category'
  # post '/categories' => 'categories#create', as: 'create_category'
  # get '/categories/:id/edit' => 'categories#edit', as: 'edit_category'
  # patch '/categories/:id/update' => 'categories#update', as: 'update_category'
  # get '/categories/:id/show' => 'categories#show', as: 'show_category'
  # delete '/categories/:id/delete' => 'categories#delete', as: 'delete_category'
  # get '/tasks' => 'tasks#index'
  # post '/tasks' => 'tasks#create', as: 'create_task'
  # get '/tasks/new' => 'tasks#new', as: 'new_task'
  # get '/tasks/:id/edit' => 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id/update' => 'tasks#update', as: 'update_task'
  # get '/tasks/:id/show' => 'tasks#show', as: 'show_task'
  # delete '/tasks/:id/delete' => 'tasks#delete', as: 'delete_task'

end
