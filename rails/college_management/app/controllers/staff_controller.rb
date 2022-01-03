class StaffController < ApplicationController
  def index
    @staffs = Staff.all  
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def new
    @staff = Staff.new
    @departments = Department.all
  end 

  def create
    @departments = Department.all
    @staff = Staff.new(params.require(:staff).
      permit(:id, :name, :salary, :address))
    if @staff.save
      redirect_to "/staffs/#{@staff.id}"
    else
      render 'new' 
    end   
  end  
  
  def edit
    @staff = Staff.find(params[:id])
  end

  def delete_staff
    staff = Staff.find(params[:staff_id])
    staff.destroy
    redirect_to :action => 'index'
  end
end
