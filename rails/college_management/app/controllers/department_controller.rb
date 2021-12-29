class DepartmentController < ApplicationController

  def index
    @departments = Department.all  
  end

  def show
    @department = Department.find(params[:id])
  end  

  def delete_department
    department = Department.find(params[:department_id])
    department.destroy
    redirect_to :action => 'index' 
  end

end
