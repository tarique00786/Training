# Preview all emails at http://localhost:3000/rails/mailers/student_mailer
class StudentMailerPreview < ActionMailer::Preview
  def welcome_email
    StudentMailer.welcome_email
  end  
end
