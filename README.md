better-scaffolding
==================

A better Grails template scaffolding based on Twitter Bootstrap v3.1.

Simple Authentication Actions
=============================

Put them at user controller.

```groovy
  def login() {
    if (request.get) {
      return // render the login view
    }

    def usuario = Usuario.findByLoginAndSenha(
      params.login, params.senha)//.encodeAsSHA())
    if (usuario) {
      session.user = usuario
      flash.type = 'alert-success'
      flash.message = "Olá ${usuario.login}!"
      redirect(uri: "/")
    }
    else {
      flash.message = "Usuário ou senha inválidos."
      redirect(action: "login")
    }
  }

  def logout() {
    flash.type = 'alert-success'
    flash.message = "Até logo ${session.user.login}!"
    session.user = null
    redirect(action: "login")
  }
```

Function for Security Filter
==============================

Create a new filter and put it there.

```groovy
  checaLogin(controller: '*', action: '*'){
    before = {
      if (!session.user && actionName != "login") {
        redirect(controller: 'usuario', action: "login")
        return false
      }
    }
  }
```