
<%@ page import="bootstrapmodals.Game" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-game" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li>
					<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#newGame">
						Add New Game
					</button>
				</li>
			</ul>
		</div>
		<div id="list-game" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

						<g:sortableColumn property="deck" title="${message(code: 'game.deck.label', default: 'Deck')}" />

						<g:sortableColumn property="subdeck" title="${message(code: 'game.subdeck.label', default: 'Subdeck')}" />

						<g:sortableColumn property="opponent" title="${message(code: 'game.opponent.label', default: 'Opponent')}" />

						<g:sortableColumn property="coin" title="${message(code: 'game.coin.label', default: 'Coin')}" />

						<g:sortableColumn property="win" title="${message(code: 'game.win.label', default: 'Win')}" />

						<g:sortableColumn property="date" title="${message(code: 'game.date.label', default: 'Date')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${gameInstanceList}" status="i" var="gameInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${gameInstance.id}">${fieldValue(bean: gameInstance, field: "deck")}</g:link></td>

						<td>${fieldValue(bean: gameInstance, field: "subdeck")}</td>

						<td>${fieldValue(bean: gameInstance, field: "opponent")}</td>

						<td><g:formatBoolean boolean="${gameInstance.coin}" true="yes" false="no" /></td>

						<td><g:formatBoolean boolean="${gameInstance.win}" true="yes" false="no" /></td>

						<td><g:formatDate date="${gameInstance.date}" format="MM-dd-yyyy" /></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${gameInstanceCount ?: 0}" />
			</div>
		</div>

	<!-- Modal -->
	<div class="modal fade" id="newGame" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">New Game</h4>
				</div>
				<div class="modal-body">
					<g:render template="create"/>
				</div>
				<div class="modal-footer">
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
