<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="js/series.js"></script>
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.indigo-orange.min.css" />
<script
	src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<title>Download Series</title>
</head>
<body>
	<div id="page" class="mdl-shadow--8dp">
		<div id="container" class="mdl-layout mdl-js-layout mdl-layout--overlay-drawer-button">
			<header class="mdl-layout__header">
				<!-- top header -->
				<div class="mdl-layout__header-row">
					<span class="mdl-layout-title"><a href="SerieFrontController">Download Series</a></span>
					<div class="mdl-layout-spacer"></div>
					<nav class="mdl-navigation">
						<a id="searchAll" class="mdl-navigation__link" href="SerieFrontController?cde=all">All</a>
						<a id="searchCurrent" class="mdl-navigation__link" href="SerieFrontController?cde=current">Courantes</a>
						<a id="buttonReset" class="mdl-navigation__link" href="#">Reset</a>
					</nav>
				</div>
				<!-- menu tabs -->
				<div id="menuTabs" class="mdl-layout__header-row">
					<nav class="mdl-navigation">
						<a href="SerieFrontController?cde=currentByDay&day=lundi" id="lundi" class="mdl-navigation__link">Lundi</a>
						<a href="SerieFrontController?cde=currentByDay&day=mardi" id="mardi" class="mdl-navigation__link">Mardi</a>
						<a href="SerieFrontController?cde=currentByDay&day=mercredi" id="mercredi" class="mdl-navigation__link">Mercredi</a>
						<a href="SerieFrontController?cde=currentByDay&day=jeudi" id="jeudi" class="mdl-navigation__link">Jeudi</a>
						<a href="SerieFrontController?cde=currentByDay&day=vendredi" id="vendredi" class="mdl-navigation__link">Vendredi</a>
						<a href="SerieFrontController?cde=currentByDay&day=samedi" id="samedi" class="mdl-navigation__link">Samedi</a>
						<a href="SerieFrontController?cde=currentByDay&day=dimanche" id="dimanche" class="mdl-navigation__link">Dimanche</a>
					</nav>
				</div>
			</header>
			<!-- contenu de la page -->
			<main class="mdl-layout__content">
				<br /> <br />
				<!-- table des resultats -->
				<jsp:include page="fragments/result_table.jsp"></jsp:include>
				<!-- formulaire de recherche -->
				<jsp:include page="fragments/form_search.jsp"></jsp:include>
				<!-- boutons RapidMoviez et Wikipedia -->
				<jsp:include page="fragments/link_buttons.jsp"></jsp:include>
				<!-- formulaire de modification -->
				<jsp:include page="fragments/form_serie.jsp"></jsp:include>
			</main>
		</div>
	</div>
</body>
</html>