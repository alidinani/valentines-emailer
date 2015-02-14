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
  end

  def self.send_email!
    print 'Sending email... '
    puts 'Sent.'
  end
end
