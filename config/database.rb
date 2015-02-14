require 'active_record'

if ENV['ENV'] && ENV['ENV'].downcase == 'production'
  fail 'No production database specified'
else
  ActiveRecord::Base.establish_connection(
    adapter: 'mysql2',
    host: 'localhost',
    database: 'valentine',
    username: 'root',
    password: ''
  )
end
