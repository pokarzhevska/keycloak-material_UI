<#import "template.ftl" as layout>
<#import "components/button/primary.ftl" as buttonPrimary>
<#import "components/input/primary.ftl" as inputPrimary>
<#import "components/link/secondary.ftl" as linkSecondary>

<@layout.registrationLayout
  displayMessage=!messagesPerField.existsError("firstName", "lastName", "email", "username", "password", "password-confirm")
  ;
  section
>
  <#if section="header">
    ${msg("registerTitle")}
  <#elseif section="form">
    <@linkSecondary.kw href=url.loginUrl>
      <span style="color: #000">Already have an account?</span>&nbsp;&nbsp;<span style="color: rgb(99, 102, 241)">Login</span>
    </@linkSecondary.kw>
    <form action="${url.registrationAction}" class="m-0 space-y-4 w-full" method="post" >
      <div class="w-full">
        <@inputPrimary.kw
          autocomplete="given-name"
          autofocus=true
          invalid=["firstName"]
          name="firstName"
          type="text"
          value=(register.formData.firstName)!''
        >
          ${msg("firstName")}
        </@inputPrimary.kw>
      </div>
      <div class="w-full">
        <@inputPrimary.kw
          autocomplete="family-name"
          invalid=["lastName"]
          name="lastName"
          type="text"
          value=(register.formData.lastName)!''
        >
          ${msg("lastName")}
        </@inputPrimary.kw>
      </div>
      <div class="w-full">
        <@inputPrimary.kw
          autocomplete="email"
          invalid=["email"]
          name="email"
          type="email"
          value=(register.formData.email)!''
        >
          ${msg("email")}
        </@inputPrimary.kw>
      </div>
      <#if passwordRequired??>
        <div class="w-full">
          <@inputPrimary.kw
            autocomplete="new-password"
            invalid=["password", "password-confirm"]
            message=false
            name="password"
            type="password"
          >
            ${msg("password")}
          </@inputPrimary.kw>
        </div>
        <div class="w-full">
          <@inputPrimary.kw
            autocomplete="new-password"
            invalid=["password-confirm"]
            name="password-confirm"
            type="password"
          >
            ${msg("passwordConfirm")}
          </@inputPrimary.kw>
        </div>
      </#if>
      <#if recaptchaRequired??>
        <div>
          <div class="g-recaptcha" data-sitekey="${recaptchaSiteKey}" data-size="compact"></div>
        </div>
      </#if>
      <div>
        <@buttonPrimary.kw type="submit">
          ${msg("doRegister")}
        </@buttonPrimary.kw>
      </div>
    </form>
  
  </#if>
</@layout.registrationLayout>
