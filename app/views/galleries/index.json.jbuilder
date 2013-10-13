json.galleries do
  json.partial! 'galleries/gallery', collection: @galleries, as: :gallery
end
