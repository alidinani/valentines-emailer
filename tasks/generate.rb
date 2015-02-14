namespace :generate do
  desc 'generate a migration file'
  task migration: :environment do
    name = ARGV.last.camelcase
    file_name = "./config/migrations/#{Time.now.to_i}_#{name.underscore}.rb"
    puts 'Creating migration: ' + name.green + " <#{file_name}>"
    File.open(file_name, 'w') { |f| f.write("class #{name} < ActiveRecord::Migration\nend") }
    puts '    Done'.red

    task ARGV.last.to_sym {}
  end
end
