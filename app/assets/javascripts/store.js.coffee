App.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create
    plurals: # custom pluralisation rules
      gallery: 'galleries'
