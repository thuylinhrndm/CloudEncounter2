class ExampleMailer < ActionMailer::Base
  default from: "noreply@cloudencounter2.edu"

  def sample_mailer
  	mail(to: 'rndmukireland@gmail.com', subject: 'This is an email from CloudEncounter!')
  end
end
