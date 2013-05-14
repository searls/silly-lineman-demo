class window.SignUpView extends Backbone.View
  template: 'app/templates/sign-up-form.us'

  events:
    "submit form": "createAccount"
    "change [name='login']": "checkAvailability"

  render: ->
    @$el.html(JST[@template]())

  createAccount: (e) ->
    e.preventDefault()
    $.post('/accounts', name: @$('[name="login"]').val())

  checkAvailability: ->
    $name = @$('[name="login"]')
    $.get "/account_availability/#{$name.val()}", (response) ->
      $name.toggleClass('invalid', !response.available)

$ ->
  new SignUpView(el: $('.container')).render()
