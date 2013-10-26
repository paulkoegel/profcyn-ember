attr = DS.attr

App.Gallery = DS.Model.extend
  title: attr('string')
  images: DS.hasMany 'App.Image'
