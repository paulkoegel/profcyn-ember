App.Gallery = DS.Model.extend
  title: DS.attr()
  images: DS.hasMany('image')

# App.Adapter.map 'post',
#   comments: { embedded: 'always' }
