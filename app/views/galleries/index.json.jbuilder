json.galleries do
  json.array! @galleries do |gallery|
    json.title gallery.title
    json.images_count gallery.images.count
  end
end
