class ContactController < ApplicationController
  def new
  	if params[:user_name]
  		@user_email = params[:user_name]
  	end
  	if params[:consultant_email]
  		@consultant_email = params[:consultant_email]
  	end
  end

  def send_email
  	if params[:message]
  	@message = params[:message]
  	end
  	if params[:email]
  	@consultant_email_address = params[:email]
    end
    if params[:user_name]
  	@user_name = params[:user_name]
    end
  
  ExampleMailer.send_email_to_consultant(@user_name, @consultant_email_address, @message).deliver
  end
end
