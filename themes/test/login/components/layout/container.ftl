<#macro kw>
  <div class=" min-h-screen flex items-center justify-center items-center">
    <div class="min-h-screen w-full flex justify-center items-center w-full p-5 relative mx-auto my-auto rounded-xl shadow-lg bg-white">
      <div class="items-center justify-center flex space-between w-full" style="position: relative;display: flex;height: 100%;">
      <div class="min-h-screen" style="width: 50%">
       <#nested>
      </div>
        <div class="text-center min-h-screen" style="display: flex;justify-content: center; width: 50%; background: radial-gradient(50% 50% at 50% 50%, rgb(18, 38, 71) 0%, rgb(9, 14, 35) 100%)">
        <div class="w-full" style="padding: 10%">
        <p
        style="color: white; font-size: 26px; font-weight: bold;"
        >
          Welcome to <span style="color: rgb(21, 183, 158);">Devias Kit</span>
        </p>
        <p style="color: #fff; font-size: 15px; font-weight: bold; padding-top: 6px">
          A professional kit that comes with ready-to-use MUI components
        </p>
        <img src="${url.resourcesPath}/dist/img/auth-illustration.svg">
        <img src="${url.resourcesPath}/dist/img/favicon.ico" style="position: fixed; top: 24px; left: 24px; width: 32px;">
        </div>
        </div>    
      </div>
  </div>
</div>
</#macro>
