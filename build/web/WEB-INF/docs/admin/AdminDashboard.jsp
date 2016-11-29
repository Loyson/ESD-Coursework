<%-- 
    Document   : main
    Created on : 10-Nov-2016, 13:16:36
    Author     : Nate
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/resources/AdminDashboardNavBar.jsp" %>

<div class="content">
    <h1>Admin Dashboard</h1>

    <div style="display: none;">
        ${JDBCBean.executeSQLQuery("SELECT * FROM members")}
    </div>
    <h2>XYZ Members</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>DOB</th>
            <th>DOR</th>
            <th>Membership</th>
            <th>Balance</th>
        </tr>
        <c:forEach items="${JDBCBean.resultsToArrayList()}" var="row" varStatus="rowStatus">
            <tr>
                <c:forEach items="${row}" var="column" varStatus="columnStatus">
                    <c:choose>
                        <c:when test="${columnStatus.last}">
                            <td>£${column}</td>
                        </c:when>
                        <c:otherwise>
                            <td>${column}</td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
    <br><br>

    <div style="display: none;">
        ${JDBCBean.executeSQLQuery("SELECT * FROM Claims")}       
    </div>
    <h2>All Claims</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Member ID</th>
            <th>Date</th>
            <th>Rationale</th>
            <th>Status</th>
            <th>Amount</th>
        </tr>
        <c:forEach items="${JDBCBean.resultsToArrayList()}" var="row" varStatus="rowStatus">
            <tr>
                <c:forEach items="${row}" var="column" varStatus="columnStatus">
                    <c:choose>
                        <c:when test="${columnStatus.last}">
                            <td>£${column}</td>                           
                        </c:when>
                        <c:otherwise>
                            <td>${column}</td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
    <br><br>

    <div style="display: none;">
        ${JDBCBean.executeSQLQuery("SELECT * FROM payments")}
    </div>
    <h2>All Payments</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Member ID</th>
            <th>Type</th>
            <th>Amount</th>
            <th>Date</th>
        </tr>
        <c:forEach items="${JDBCBean.resultsToArrayList()}" var="row" varStatus="rowStatus">
            <tr>
                <c:forEach items="${row}" var="column" varStatus="columnStatus">
                    <c:choose>
                        <c:when test="${columnStatus.index eq 3}">
                            <td>£${column}</td>
                        </c:when>
                        <c:otherwise>
                            <td>${column}</td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</div>


