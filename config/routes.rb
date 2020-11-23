Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/categories' => 'categories#index'
get '/categories/new' => 'categories#new', as: 'new_category'
get '/categories/show' => 'categories#show', as: 'show_category'
get '/categories/edit' => 'categories#edit', as: 'edit_category'

end
