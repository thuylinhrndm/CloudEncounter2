class ExampleMailer < ActionMailer::Base
  default from: "noreply@cloudencounter2.edu"

  def sample_mailer
  	mail(to: 'rndmukireland@gmail.com', subject: 'This is an email from CloudEncounter!')
  end

  def send_email_to_consultant(user_name, consultant_email_address, message)
  	@message = message
  	@user_name = user_name
  	mail(to: consultant_email_address, subject: 'Email from a CloudEncounter User', )
  end
end
