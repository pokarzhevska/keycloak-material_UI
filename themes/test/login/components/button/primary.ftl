<#macro kw component="button" rest...>
  <${component}
    class="flex justify-center px-4 py-2 relative rounded-lg text-sm text-white w-full focus:outline-none focus:ring-2 w-full"
    style="background-color:rgb(99, 102, 241); height: 50px; font-size: 17px; padding-top: 12px; border-radius: 12px; font-weight: bold"
    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    Continue
  </${component}>
</#macro>
