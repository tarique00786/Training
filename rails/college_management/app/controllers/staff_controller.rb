class StaffController < ApplicationController
  def index
    @staffs = Staff.all  
  end

  def show
    @staff = Staff.find(params[:id])
  end 
   
  def delete_staff
    staff = Staff.find(params[:staff_id])
    staff.destroy
    redirect_to :action => 'index'
  end
end
