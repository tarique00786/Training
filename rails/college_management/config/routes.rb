Rails.application.routes.draw do
  root 'home#index'
  get '/students', to: 'student#index'
  get '/students/:id', to: 'student#show'
  get '/staffs/:id', to: 'staff#show'
  get '/departments/:id', to: 'department#show'
  get '/departments/:id', to: 'department#show'
  get '/students/:id/edit', to: 'student#edit'
  get '/staffs/:id/edit', to: 'staff#edit'
  get '/departments/:id/edit', to: 'department#edit'
  get '/departments', to: 'department#index'
  get '/staffs', to: 'staff#index'
  get '/student/new', to: 'student#new'
  get '/department/new', to: 'department#new'
  get '/aboutus', to: 'aboutus#index'
  get '/home/index', to: 'home#index'
  get 'students/index', to: 'student#index'
  post '/students', to: 'student#create'
  post '/departments', to: 'department#create'
  patch '/students/:id', to: 'student#update'
  patch '/departments/:id', to: 'department#update'
  patch '/staffs/:id', to: 'staff#update'
  delete '/delete_department/:department_id', to: 'department#delete_department'
  delete '/delete_staff/:staff_id', to: 'staff#delete_staff'
  delete '/delete_student/:student_id', to: 'student#delete_student'
=begin  
  get 'student/index'
  get 'student/delete'
  get 'department/index'
  get 'department/delete'
  get 'staff/index'
  get 'staff/delete'
  get 'home/index'
=end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
