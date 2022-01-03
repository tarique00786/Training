class StudentMailer < ApplicationMailer
  def welcome_email(id)
    @student = Student.find_by(id: id)
    mail(to: @student.email, subject: "New user created")
  end      
end
