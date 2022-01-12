<!DOCTYPE html>
<html>
<head>
    <title>Skills page</title>
   <jsp:include page="headers.jsp" />
    </head>

<jsp:include page="navigation.jsp" />

<div class="container">
    <div class="row">
        <h2>Skills page</h2>
    </div>
    <div class="row">
        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
            <div class="btn-group me-2" role="group" aria-label="Second group">
                <a href="/skills/new" type="button" class="btn btn-primary">New record</a>
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Language</th>
                 <th scope="col">Skill rate</th>

             </tr>
            </thead>
            <tbody>
            <%
            Object[] skills = (Object[]) request.getAttribute("skills");
                for(Object objSkills : skills){
                ua.model.Skills skill = (ua.model.Skills) objSkills;
                %>

                <tr>
                    <td><%= skill.getId() %></td>
                    <td><%= skill.getLanguage()  %></td>
                    <td><%= skill.getSkillRate()  %></td>

                    <td>
                            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                <div class="btn-group mr-2" role="group" aria-label="First group">
                                    <a href="/skills/<%= skill.getId() %>" type="button" class="btn btn-warning">Edit</a>
                                    <a href="/skills/delete/<%= skill.getId() %>"type="button" class="btn btn-danger">Remove</a>
                                </div>

                            </div>
                        </td>
                 </tr>

            <% } %>

            </tbody>
        </table>
    </div>
</div>

</body>
</html>