require 'mandrill'

class Mailer
  def self.send_warning
    number_left = 5
    message = <<-eos
Hi Ali,

I noticed you only have #{number_left} emails queued.
You should probably get on that...

Yours Truly,
Your Valentine Buddy ;)
    eos
    puts '----'
    puts message
    puts '----'
    deliver_email('alidinani@gmail.com', 'Get your shit together.', message)
  end

  def self.deliver_email(to, subject, text)
    m = Mandrill::API.new 'oVDACt4VxI_4fLJK7tk4Kg'
    message = {
      subject: subject,
      from_name: 'Ali Dinani',
      from_email: 'alidinani@gmail.com',
      text: text,
      to: [{
        email: to,
        name: 'Moona'
      }]
    }
    sending = m.messages.send message
    puts sending
  end
end
