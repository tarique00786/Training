class HomeController < ApplicationController
  
  def user
    @users = User.all.order(first_name: :asc)
  end 
=begin  
  def index
    @books = Book.all.order(name: :asc)
  end

  def delete_book
    book = Book.find(params[:book_id])
    book.destroy
    redirect_to root_url
  end
=end
  def delete_user
    user = User.find(params[:user_id])
    user.destroy
    redirect_to root_url
  end  

  def department
    @departments = Department.all.order(hodname: :asc)	
  end	

  def delete_department
    department = Department.find(params[:department_id])	
    department.destroy
    redirect_to root_url
  end	
   	
end
