<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div id="divTable">
	<table id="resultTable"
		class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
		<thead>
			<tr>
				<th class="mdl-data-table__cell--non-numeric">Nom</th>
				<th class="mdl-data-table__cell--non-numeric">Jour</th>
				<th class="mdl-data-table__cell--non-numeric">Date</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${series }" var="serie">
				<tr data-id="${serie.idSerie }" data-nom="${serie.nom }"
					data-jour="${serie.jour }" data-url="${serie.url }"
					data-dateDiff="${serie.dateDiff }">
					<td class='mdl-data-table__cell--non-numeric'>${serie.nom }</td>
					<td class='mdl-data-table__cell--non-numeric'>${serie.jour }</td>
					<td class='mdl-data-table__cell--non-numeric'>${serie.dateDiff }</td>
					<td class='editTd' style="text-align: center; padding: 0px; vertical-align: middle;">
						<button id="editButton" type="button"
							class="mdl-button mdl-js-button mdl-button--icon 
							mdl-js-ripple-effect mdl-button--colored mdl-shadow--2dp">
							<i class="material-icons">edit</i>
						</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>