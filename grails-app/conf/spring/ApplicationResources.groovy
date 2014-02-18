modules = {
  core {
    resource url: 'css/bootstrap.css'
    resource url: 'css/main.css'
  }
  application {
    resource url: 'js/jquery.js'
    resource url: 'js/bootstrap.min.js'
    resource url: 'js/application.js'
  }

  datepicker {
    dependsOn 'application'
    resource url:'js/bootstrap-datepicker.js'
    resource url:'js/bootstrap-datepicker.pt-BR.js'
  }
}
