App.Router.map ->
  @resource 'galleries', ->
    @resource 'gallery', { path: ':gallery_id' }

App.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'galleries'

App.GalleriesRoute = Ember.Route.extend
  # setupController: (controller, model) ->
  #   controller.set 'model', model
  model: ->
    console.log galleries = App.Gallery.find()
    return galleries

App.GalleriesIndexRoute = Ember.Route.extend
  setupController: ->
    galleries = App.Gallery.find()
    @controllerFor('galleries').set('galleries', galleries)
