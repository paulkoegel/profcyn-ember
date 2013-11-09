App.Image = DS.Model.extend
  gallery: DS.belongsTo('gallery')
  title: DS.attr()
  url: DS.attr()
