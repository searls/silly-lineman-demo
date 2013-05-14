class window.SignUpView extends Backbone.View
  template: 'app/templates/sign-up-form.us'

  render: ->
    @$el.html(JST[@template]())

$ ->
  new SignUpView(el: $('.container')).render()
