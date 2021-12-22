class StudentController < ApplicationController
  def index
    @students = Student.all.order(name: :asc)  
  end

  def delete_student
    student = Student.find(params[:student_id])
    student.destroy
    redirect_to :action => 'index'
  end
end
