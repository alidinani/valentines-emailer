namespace :db do
  desc 'run the migrations'
  task migrate: :environment do
    ActiveRecord::Migrator.migrate './config/migrations/'
  end

  desc 'rollback previous migration'
  task rollback: :environment do
    ActiveRecord::Migrator.rollback './config/migrations/'
  end
end
