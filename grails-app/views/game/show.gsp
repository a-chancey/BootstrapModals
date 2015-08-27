
<%@ page import="bootstrapmodals.Game" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'game.label', default: 'Game')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-game" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-game" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list game">
			
				<g:if test="${gameInstance?.deck}">
				<li class="fieldcontain">
					<span id="deck-label" class="property-label"><g:message code="game.deck.label" default="Deck" /></span>
					
						<span class="property-value" aria-labelledby="deck-label"><g:fieldValue bean="${gameInstance}" field="deck"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.subdeck}">
				<li class="fieldcontain">
					<span id="subdeck-label" class="property-label"><g:message code="game.subdeck.label" default="Subdeck" /></span>
					
						<span class="property-value" aria-labelledby="subdeck-label"><g:fieldValue bean="${gameInstance}" field="subdeck"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.opponent}">
				<li class="fieldcontain">
					<span id="opponent-label" class="property-label"><g:message code="game.opponent.label" default="Opponent" /></span>
					
						<span class="property-value" aria-labelledby="opponent-label"><g:fieldValue bean="${gameInstance}" field="opponent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.coin}">
				<li class="fieldcontain">
					<span id="coin-label" class="property-label"><g:message code="game.coin.label" default="Coin" /></span>
					
						<span class="property-value" aria-labelledby="coin-label"><g:formatBoolean boolean="${gameInstance?.coin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.win}">
				<li class="fieldcontain">
					<span id="win-label" class="property-label"><g:message code="game.win.label" default="Win" /></span>
					
						<span class="property-value" aria-labelledby="win-label"><g:formatBoolean boolean="${gameInstance?.win}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="game.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${gameInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gameInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="game.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${gameInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gameInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gameInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
