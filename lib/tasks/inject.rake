namespace :inject do
  task :all_data => :environment do
    file = File.read(File.join(Rails.root, "public", "data", "catalog.json"))
    data_hash = JSON.parse(file)
    data_hash.each do |hash|
      s = Shoe.create(:name => hash['title'], :url => hash['image_link'], :seller => hash['link'], :brand => hash['brand'], :age_group => hash['age_group'], :price => hash['price'], :product_type => hash['product_type'], :description => hash['description'], :gender => hash['gender'], :color => hash['color'], :popularity=> hash['pageviews'])
      puts s
    end
  end
end

#<Shoe id: nil, name: nil, url: nil, seller: nil, created_at: nil, updated_at: nil, brand: nil, description: nil, age_group: nil, price: nil, product_type: nil, gender: nil, color: nil>
