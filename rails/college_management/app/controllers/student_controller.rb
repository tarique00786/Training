class StudentController < ApplicationController
  def index
    @students = Student.all.order(name: :asc)  
  end

  def delete
  end
end
