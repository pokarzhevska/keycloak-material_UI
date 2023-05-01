<#macro kw component="a" rest...>
  <${component}
    class="flex text-secondary-600 hover:text-secondary-900" style="color:  rgb(99, 102, 241)"
    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
