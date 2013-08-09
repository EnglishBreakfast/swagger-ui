class OverviewView extends Backbone.View
  initialize: ->

  render: ->
    $(@el).html(Handlebars.templates.overview(@model))
    @

