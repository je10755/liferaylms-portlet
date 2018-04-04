<%@ include file="/init-min.jsp" %>

<div class="search-user search-row">
	<aui:input name="${displayTerms.getFIRST_NAME() }" label="first-name" size="20" value="${displayTerms.firstName}" />
	<aui:input name="${displayTerms.getLAST_NAME() }" label="last-name" size="20" value="${displayTerms.lastName}" />
	<c:if test="${displayTerms.showScreenName}">
		<aui:input name="${displayTerms.getSCREEN_NAME() }" label="screen-name" size="20" value="${displayTerms.screenName }" />
	</c:if>
	<c:if test="${displayTerms.showEmailAddress}">
		<aui:input name="${displayTerms.getEMAIL_ADDRESS() }" label="email-address" size="20" value="${displayTerms.emailAddress }" />
	</c:if>
</div>
<c:if test="${not empty displayTerms.userTeams }">
	<div class="search-user">
		<aui:select name="${displayTerms.getTEAM() }" label="team">
			<c:if test="${displayTerms.hasNullTeam }">
				<aui:option label="" value="0"/>
			</c:if>
			<c:forEach items="${displayTerms.userTeams}" var="team">
				<aui:option  value="${team.teamId}" label="${team.name}" selected="${team.teamId == displayTerms.teamId}"></aui:option>
			</c:forEach>
		</aui:select>
	</div>
</c:if>
