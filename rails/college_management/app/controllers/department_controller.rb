class DepartmentController < ApplicationController

  def index
    @departments = Department.all  
  end

  def show
    @department = Department.find(params[:id])
  end 

  def new
    @department = Department.new
  end  

  def create
    @department = Department.new(params.require(:department).
      permit(:name, :location))
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
      permit(:name, :location))
    redirect_to "/departments/#{@department.id}"
  end 

  def delete_department
    department = Department.find(params[:department_id])
    department.destroy
    redirect_to :action => 'index' 
  end

end
