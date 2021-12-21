Rails.application.routes.draw do
  root 'home#index'
  get 'staff/index'
  get 'department/index'
  get 'student/index'
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
