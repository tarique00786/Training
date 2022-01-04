class EmailWorker
  include Sidekiq::Worker

  def perform(id)
    StudentMailer.welcome_email(id).deliver_now
  end
end