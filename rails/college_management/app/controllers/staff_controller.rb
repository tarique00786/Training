class StaffController < ApplicationController
  def index
    @staffs = Staff.all  
  end

  def delete
  end
end
