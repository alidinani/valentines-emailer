task console: :environment do
  binding.pry
end

task start: :environment do
  Engine.start
end

task force_start: :environment do
  Engine.start true
end
