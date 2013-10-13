ProfCyn.Router.map ->
  @resource 'galleries', ->
    @resource 'gallery', { path: ':gallery_id' }

ProfCyn.IndexRoute = Ember.Route.extend
  # model: ->
  #   console.log 'aaa'
  redirect: ->
    @transitionTo 'galleries'

ProfCyn.GalleriesRoute = Ember.Route.extend
  model: ->
    ProfCyn.Gallery.find()
