json.gallery do
  json.partial! 'galleries/gallery', gallery: @gallery
end
json.images do
  json.partial! 'images/image', collection: @gallery.images, as: :image
end
