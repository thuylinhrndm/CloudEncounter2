class Reminder < ActionMailer::Base
  default from: "reminders@cloudencounter.com"
   
   def reminder_email(user_id, appointment_hour_time, consultant_id)
    user = User.find(user_id)
    consultant = User.find(consultant_id)
    @message = "Hi #{user.name},\nYou have an appointment tomorrow at #{appointment_hour_time} with #{consultant.name}. \n All the best,\nCloudEncounter" 
    mail(to: user.email, subject: "Reminder of your appointment tomorrow")
   end
end
