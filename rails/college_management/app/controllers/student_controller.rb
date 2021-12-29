class StudentController < ApplicationController

  def index
    @students = Student.all.order(name: :asc)  
  end

  def show
    @student = Student.find(params[:id])
  end  

  def new
    @student = Student.new
    @departments = Department.all
  end 

  def create
    @departments = Department.all
    @student = Student.new(params.require(:student).
      permit(:department_id, :name, :admission))
    if @student.save
      redirect_to "/students/#{@student.id}"
    else
      render 'new' 
    end   
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).
      permit(:id, :department_id, :name, :admission))
    redirect_to "/students/#{@student.id}"
  end 

  def delete_student
    student = Student.find(params[:student_id])
    student.destroy
    redirect_to :action => 'index'
  end
end
