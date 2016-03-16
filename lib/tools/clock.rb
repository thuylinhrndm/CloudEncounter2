require 'clockwork'

include Clockwork

handler do |job, time|
    if job.eql?("say_hello")
        puts "Hey man! Clockwork here! It's #{time.strftime("%H:%M")}"
    elsif job.eql?("send_tester_email")
    # Reminder.tester_email
    puts "Send an email."
    puts "Sent email to rndmukireland@gmail.com"
    else
        puts "Aww.."
    end
end

every(1.minute, 'say_hello')
every(1.minute, 'send_tester_email')