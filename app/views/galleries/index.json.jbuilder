json.galleries do
  json.partial! 'galleries/index_gallery', collection: @galleries, as: :gallery
end
