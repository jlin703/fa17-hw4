Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'welcome' => 'welcome#index', as: 'welcome'
  post 'welcome' => 'welcome#create', as: 'create_todo'
  get 'welcome#new' => 'welcome#new', as: 'new_todo'
end
