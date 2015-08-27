<%@ page import="bootstrapmodals.Game" %>



<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'deck', 'error')} required">
	<label for="deck">
		<g:message code="game.deck.label" default="Deck" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="deck" required="" value="${gameInstance?.deck}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'subdeck', 'error')} required">
	<label for="subdeck">
		<g:message code="game.subdeck.label" default="Subdeck" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subdeck" required="" value="${gameInstance?.subdeck}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'opponent', 'error')} required">
	<label for="opponent">
		<g:message code="game.opponent.label" default="Opponent" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="opponent" required="" value="${gameInstance?.opponent}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'coin', 'error')} ">
	<label for="coin">
		<g:message code="game.coin.label" default="Coin" />
		
	</label>
	<g:checkBox name="coin" value="${gameInstance?.coin}" />

</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'win', 'error')} ">
	<label for="win">
		<g:message code="game.win.label" default="Win" />
		
	</label>
	<g:checkBox name="win" value="${gameInstance?.win}" />

</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="game.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" precision="day"  value="${gameInstance?.date}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="game.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${gameInstance?.notes}"/>

</div>

