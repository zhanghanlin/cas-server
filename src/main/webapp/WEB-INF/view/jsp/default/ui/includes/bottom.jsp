<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</div> <!-- END #content -->
<footer>
    <div id="copyright">
        <p><spring:message code="copyright"/></p>
        <p>Powered by <a href="http://www.jasig.org/cas">Jasig Central Authentication
            Service <%=org.jasig.cas.CasVersion.getVersion()%>
        </a></p>
    </div>
</footer>
</div> <!-- END #container -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://github.com/cowboy/javascript-debug/raw/master/ba-debug.min.js"></script>
<spring:theme code="cas.javascript.file" var="casJavascriptFile" text=""/>
<script type="text/javascript" src="<c:url value="${casJavascriptFile}" />"></script>
</body>
</html>

