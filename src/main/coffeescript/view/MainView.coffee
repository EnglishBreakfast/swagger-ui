class MainView extends Backbone.View
  initialize: ->

  render: ->
    # Render the outer container for resources
    $(@el).html(Handlebars.templates.main(@model))

    # Render each resource
    @addResource resource for resource in @model.apisArray

    # Render api overview
    @addOverview @model.overview

  addResource: (resource) ->
    # Render a resource and add it to resources li
    resourceView = new ResourceView({model: resource, tagName: 'li', id: 'resource_' + resource.name, className: 'resource'})
    $('#resources').append resourceView.render().el

  addOverview: (overview) ->
    # Render a resource and add it to resources li
    overviewView = new OverviewView({model: overview, tagName: 'div', id: 'overview'})
    $('#overview').append overviewView.render().el
    console.log overviewView.render().el

  clear: ->
    $(@el).html ''
