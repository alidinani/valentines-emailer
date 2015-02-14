class Engine
  def self.start(force = false)
    puts "[#{DateTime.now}] Engine Started"
    print 'Sending Today? '
    if DateCheck.send_today? || force
      puts 'Yes!'
      send_email!
    else
      puts 'No.'
    end
    warning_send!
  end

  def self.send_email!
    print 'Sending email... '
    if email = Email.today.first
      Mailer.deliver_actual(email)
      puts 'Sent.'
    else
      puts 'THERE IS NONE =/'
    end
  end

  def self.warning_send!
    print 'Warning needed? '
    queued = Email.future.count
    if queued < 5
      puts 'Yes :('
      Mailer.send_warning
    else
      puts 'Nope!'
    end
  end
end
