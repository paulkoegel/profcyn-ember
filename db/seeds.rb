# encoding: UTF-8

puts 'Seeding. This will take a minute...'

# truncate all database tables except schema_migrations
if Rails.env.development?
  ActiveRecord::Base.establish_connection
  ActiveRecord::Base.connection.tables.delete_if{|table| table == 'schema_migrations'}.each do |table|
    ActiveRecord::Base.connection.execute "TRUNCATE #{table}"
  end
end

galleries = [ Gallery.create(title: 'Taiwan Hong Kong', year: 2013, month: 4),
              Gallery.create(title: 'Urban Exploration', year: 2012) ]

%w(taiwan_hong_kong_2013 urban_exploration_2012).each_with_index do |folder, index|
  image_paths = Dir["#{Dir.home}/Pictures/images/#{folder}/*.jpg"]

  image_paths.each do |image_path|
    file = File.new(image_path)

    full_filename = image_path.split('/').last
    filename = full_filename.split('.').first
    image = galleries[index].images.create( title: filename,
                                            url:           "http://localhost:8000/#{folder}/#{ERB::Util.url_encode full_filename}",
                                            thumbnail_url: "http://localhost:8000/#{folder}/thumbs/#{ERB::Util.url_encode full_filename}",
                                            width:  Dimensions.width(file),
                                            height: Dimensions.height(file),
                                            sha:    Digest::SHA256.hexdigest(file.read)
                                          )
  end
end
