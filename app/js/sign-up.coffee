class window.SignUpView extends Backbone.View
  template: 'app/templates/sign-up-form.us'

  events:
    "submit form": "createAccount"

  render: ->
    @$el.html(JST[@template]())

  createAccount: (e) ->
    e.preventDefault()
    $.post('/accounts', name: @$('[name="login"]').val())

$ ->
  new SignUpView(el: $('.container')).render()
