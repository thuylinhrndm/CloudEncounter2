class EmailsController < ApplicationController
    
    def reminder
        Reminder.reminder_email(params[:user_id], params[:time]).deliver
        redirect_to root_path, notice: "Thank you for sending that email"
    end
end
