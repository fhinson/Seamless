namespace :inject do
  task :all_data => :environment do
    file = File.read(File.join(Rails.root, "public", "data", "catalog.json"))
    data_hash = JSON.parse(file)
    data_hash.each do |hash|
      puts hash['brand']
    end
  end
end
