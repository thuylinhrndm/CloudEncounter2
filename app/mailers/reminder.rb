class Reminder < ActionMailer::Base
  default from: "reminders@cloudencounter.com"
   
   def reminder_email(user_id, appointment_hour_time)
    user = User.find(user_id)
    # consultant = User.find_by_consultant_id(consultant_id)
    @message = "Hi #{user.name},\nYou have an appointment tomorrow at #{appointment_hour_time} with Mr. T.\n All the best,\nCloudEncounter2" 
    mail(to: user.email, subject: "Reminder of your appointment tomorrow")
   end
end
