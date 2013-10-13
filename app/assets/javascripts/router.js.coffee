App.Router.map ->
  @resource 'galleries', ->
    @resource 'gallery', { path: ':gallery_id' }

App.IndexRoute = Ember.Route.extend
  # model: ->
  #   console.log 'aaa'
  redirect: ->
    @transitionTo 'galleries'

App.GalleriesRoute = Ember.Route.extend
  model: ->
    App.Gallery.find()
