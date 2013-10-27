# encoding: UTF-8

puts 'Seeding. This will take a minute...'

# truncate all database tables except schema_migrations
if Rails.env.development?
  ActiveRecord::Base.establish_connection
  ActiveRecord::Base.connection.tables.delete_if{|table| table == 'schema_migrations'}.each do |table|
    ActiveRecord::Base.connection.execute "TRUNCATE #{table}"
  end
end

gallery = Gallery.create title: 'Awesome Gallery'

random_image_paths = Dir['/Users/paul/Pictures/images/*.png', '/Users/paul/Pictures/images/*.jpg'].shuffle
60.times do |counter|
  full_filename = random_image_paths[counter].split('/').last
  filename = full_filename.split('.').first
  image = gallery.images.create(url: "http://localhost:8000/#{full_filename}", title: filename)
end

gallery = Gallery.create title: 'Hong Kong'
