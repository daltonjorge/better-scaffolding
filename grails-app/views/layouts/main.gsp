<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <title><g:layoutTitle default="Nome da Aplicação"/></title>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
    <r:use module="core"/>
    <g:layoutHead/>
    <r:layoutResources />
  </head>
  <body>
    <!--
    <div class="navbar navbar-inverse navbar-fixed-top">
    -->
    <nav class="navbar navbar-static-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <g:link class="navbar-brand" controller="" action="">Nome_da_Aplicacao</g:link>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="divider"></li>
            <li class="dropdown ${params.controller in ['controlador1','controlador2'] ? 'active' : ''}">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="glyphicon glyphicon-folder-open"></i>  Cadastros <b class="caret"></b>
              </a>
              <ul class="dropdown-menu">
                <li class="${params.controller  == 'controlador1' ? 'active' : ''}">
                  <g:link controller="controlador1">Controlador 1</g:link>
                </li>
                <li class="${params.controller  == 'controlador2' ? 'active' : ''}">
                  <g:link controller="controlador2" action="index">Controlador 2</g:link>
                </li>
              </ul>
            </li>
          </ul>
          <div class="nav navbar-nav navbar-right">
            <p class="navbar-text">Logado como ${session.user}</p>
              <g:link class="btn btn-danger navbar-btn navbar-right" controller="controlador_do_usuario" action="logout">
                <i class="glyphicon glyphicon-off"></i> Sair
              </g:link>
          </div>
        </div>
      </div>
    <!--
    </div>
  -->
    </nav>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <g:layoutBody/>
        </div>
      </div>
      <hr>
      <footer>
        <p>&copy; Empresa</p>
      </footer>
    </div>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <r:use module="application"/>
    <r:layoutResources />
  </body>
</html>
