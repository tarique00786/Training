Rails.application.routes.draw do
  get 'employee/index', to: 'employee#index'
  resources :departments
  resources :students
  #root 'home#index'
  #root 'home#user'
  #get '/index', to: "root/index"
  root 'home#department'
  delete '/delete_book/:book_id', to: 'home#delete_book'
  delete '/delete_user/:user_id', to: 'home#delete_user'
  delete '/delete_department/:department_id', to: 'home#delete_department'
  #get 'department/view', to: 'department#view'
  get 'demo/index', to: 'demo#index'
  get 'demo/hello'
  get 'demo/contact'
  get 'demo/about'

  #get ':controller(/:action(/:id))' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
