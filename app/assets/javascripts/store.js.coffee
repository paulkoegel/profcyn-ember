# custom pluralisation rules
# DS.RESTAdapter.configure 'plurals',
#   gallery: 'galleries'


Ember.Inflector.inflector.irregular('gallery', 'galleries')

App.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()
