<#import "parts/common.ftlh" as c>

<@c.page>
User editor

<form action="/user" method="post">
    <input type="text" name="username" value="${user.username}" />
    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role.name}" ${user.roles?seq_contains(role)?string("checked", "")}>${role.name}</label>
    </div>
    </#list>
    <input type="hidden" name="userId" value="${user.id}" />
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit">Save</button>
</form>
</@c.page>