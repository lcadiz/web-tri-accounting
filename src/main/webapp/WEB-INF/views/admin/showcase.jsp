<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>

<mytag:master>
    <jsp:attribute name="head">
        <%-- includes here --%>
    </jsp:attribute>
    <jsp:attribute name="body">
        <div ng-app="myapp">
            <div ng-controller="acbCtrl">
                <p>You selected account: <b>{{selectedAccount ? (selectedAccount.code + ' ' + selectedAccount.title) : 'None'}}</b></p>
                <div account-browser-s btn_label="Browse accounts" handler="accounts_selection_handler(account)" />
            </div>

            <div ng-controller="sleCtrl">
                <p>You selected entity: <b>{{selectedEntity ? (selectedEntity.accountNo + ' ' + selectedEntity.name) : 'None'}}</b></p>
                <div sl-entity-browser btn_label="Browse entities" handler="entity_selection_handler(entity)" />
            </div>
        </div>
    </jsp:attribute>
</mytag:master>

<%--take note of the ff dependencies and their include order--%>
<script src="<c:url value="/resources/js/app/factories/business-segment-factory.js" />"></script>
<script src="<c:url value="/resources/js/app/factories/account-factory.js" />"></script>
<script src="<c:url value="/resources/js/app/directives/account-browser-s.js" />"></script>

<script src="<c:url value="/resources/js/app/factories/entity-factory.js" />"></script>
<script src="<c:url value="/resources/js/app/directives/sl-entity-browser.js" />"></script>

<script type="text/javascript">
        var app = angular.module('myapp', ['cmnAccountBrowserWithSegmentApp', 'cmnSLEntityBrowserApp']);

        app.controller('acbCtrl', ['$scope', function($scope) {
            $scope.accounts_selection_handler = function(account){
                $scope.selectedAccount = account;
            }
        }]);

        app.controller('sleCtrl', ['$scope', function($scope) {
            $scope.entity_selection_handler = function(entity){
                $scope.selectedEntity = entity;
            }
        }]);
</script>