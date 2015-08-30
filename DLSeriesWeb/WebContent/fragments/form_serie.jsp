<div id="divFormSerie">
	<form id="formSerie" action="SerieFrontController?cde=cud"
		method="post">
		<fieldset>
			<legend>Champs de la série</legend>
			<div class="mdl-textfield mdl-js-textfield">
				<label for="serieId" class="mdl-textfield__label"></label> <input
					id="serieId" name="serieId" class="mdl-textfield__input"
					type="text" />
			</div>
			<div class="mdl-textfield mdl-js-textfield">
				<label for="serieName" class="mdl-textfield__label"></label> <input
					id="serieName" name="serieName" class="mdl-textfield__input"
					type="text" />
			</div>
			<div class="mdl-textfield mdl-js-textfield">
				<label for="serieDay" class="mdl-textfield__label"></label> <input
					id="serieDay" name="serieDay" class="mdl-textfield__input"
					type="text" />
			</div>
			<div class="mdl-textfield mdl-js-textfield">
				<label for="serieUrl" class="mdl-textfield__label"></label> <input
					id="serieUrl" name="serieUrl" class="mdl-textfield__input"
					type="text" />
			</div>
			<div class="mdl-textfield mdl-js-textfield">
				<label for="serieDate" class="mdl-textfield__label"></label> <input
					id="serieDate" name="serieDate" class="mdl-textfield__input"
					type="text" />
			</div>
			<br />
			<div id="divButtons">
				<button id="createSerie" name="action" value="create"
					class="mdl-button mdl-js-button mdl-button--icon 
							mdl-js-ripple-effect mdl-button--colored mdl-shadow--4dp">
					<i class="material-icons">add</i>
				</button>
				<button id="updateSerie" name="action" value="update"
					class="mdl-button mdl-js-button mdl-button--icon 
							mdl-js-ripple-effect mdl-button--colored mdl-shadow--4dp">
					<i class="material-icons">autorenew</i>
				</button>
				<button id="deleteSerie" name="action" value="delete"
					class="mdl-button mdl-js-button mdl-button--icon 
							mdl-js-ripple-effect mdl-button--colored mdl-shadow--4dp">
					<i class="material-icons">remove</i>
				</button>
			</div>
		</fieldset>
	</form>
	<br />
</div>