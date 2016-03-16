require 'clockwork'
# require '.config/boot'
# require '.config/environment'

module Clockwork
    handler do |job, time|
        puts "Doing #{job} at #{time}"
    end
    
    def send_reminder_emails
        puts "Hello clockwork!"
        logger.debug "Hi there clockwork!"
    end
    
    every(1.minute, "send_reminder_emails")

end