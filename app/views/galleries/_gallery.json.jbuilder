json.id gallery.id
json.title gallery.title
json.description gallery.description
json.location gallery.location
json.images_count gallery.images.count
json.images do
  json.partial! 'images/image', collection: gallery.images, as: :image
end
