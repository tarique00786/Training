Rails.application.routes.draw do
  root 'home#index'
  get '/students', to: 'student#index'
  get '/departments', to: 'department#index'
  get '/staffs', to: 'staff#index'
  get '/students/new', to: 'student#new'
  get '/aboutus/index', to: 'aboutus#index'
  get '/home/index', to: 'home#index'
  get 'staff/index'
  get 'department/index'
  get 'student/index'
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
