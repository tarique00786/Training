class DepartmentController < ApplicationController

  def index
    @departments = Department.all  
    @departments = Department.paginate(:page => params[:page], :per_page => 2)
  end

  def show
    @department = Department.find(params[:id])
  end 

  def new
    @department = Department.new
    @department.students.build
  end  

  def create
    @department = Department.new(params.require(:department).
      permit(:name, :location, images: [], students_attributes: [:name, :admission]))
    if @department.save
      redirect_to "/departments/#{@department.id}"
    else
      render 'new' 
    end
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    @department.update(params.require(:department).
      permit(:name, :location, images: []))
    redirect_to "/departments/#{@department.id}"
  end 

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    redirect_to :action => 'index' 
  end

  def search
    @departments = Department.where("name ILIKE ?","%#{params[:department]}%")
  end  

end
