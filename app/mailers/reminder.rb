class Reminder < ActionMailer::Base
  default from: "reminders@cloudencounter.com"
   
   def reminder_email(user_name, user_email, consultant_name, appointment_time)
    #@message = "Hi #{},\nYou have an appointment tomorrow with #{}, at #{}.\n All the best,\nCloudEncounter2" 
    #mail to: user_email, subject: "Reminder of your appointment tomorrow"
   end
end
