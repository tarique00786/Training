class StudentController < ApplicationController

  def index
    @students = Student.search(params[:search], params[:page])
    @students = @students.paginate(page: params[:page], per_page: 10)
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
      permit(:department_id, :name, :admission, :email, :image, :clip, :thumbnail))
    if @student.save
      Sidekiq::Client.enqueue_to_in("default", Time.now, EmailWorker,@student.id)
      #StudentMailer.welcome_email(@student.id).deliver_now
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
      permit(:id, :department_id, :name, :admission, :email, :image, :avatar, :clip, :thumbnail))
    redirect_to "/students/#{@student.id}"
  end 

  def delete_student
    student = Student.find(params[:student_id])
    student.destroy
    redirect_to :action => 'index'
  end

end
