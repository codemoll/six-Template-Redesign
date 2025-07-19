{if in_array('state', $optionalFields)}
    <script>
        var statesTab = 10;
        var stateNotRequired = true;
    </script>
{/if}

<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
<script type="text/javascript" src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script>
    window.langPasswordStrength = "{$LANG.pwstrength}";
    window.langPasswordWeak = "{$LANG.pwstrengthweak}";
    window.langPasswordModerate = "{$LANG.pwstrengthmoderate}";
    window.langPasswordStrong = "{$LANG.pwstrengthstrong}";
    jQuery(document).ready(function()
    {
        jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
    });
</script>
{if $registrationDisabled}
    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="'|cat:"$WEB_ROOT"|cat:'/cart.php" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}
{/if}

{if $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}

{if !$registrationDisabled}
<div class="auth-container">
    <div class="auth-card" style="max-width: 600px;">
        <div class="auth-header">
            <div class="auth-logo">
                <span class="primary">DoubleSpeed</span><span class="secondary">Host</span>
            </div>
            <p class="auth-subtitle">Create your account and join our hosting community</p>
        </div>

        {if $errormessage}
            {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
        {/if}

        <form method="post" class="auth-form using-password-strength" action="{$smarty.server.PHP_SELF}" role="form" name="orderfrm" id="frmCheckout">
            <input type="hidden" name="register" value="true"/>

            <div id="containerNewUserSignup">
                
                {if $linkableProviders}
                    <div class="auth-social-login">
                        {include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}
                    </div>
                    <div class="auth-divider">
                        <span>or register with email</span>
                    </div>
                {/if}

                <h3 style="color: var(--ds-neon-green); font-family: 'Orbitron', monospace; font-size: 1.2rem; margin-bottom: 1.5rem; text-align: center;">
                    <i class="fas fa-user"></i> Personal Information
                </h3>
                
                <div class="row">
                    <div class="col-sm-6">
                        <div class="auth-form-group">
                            <label for="inputFirstName">{$LANG.orderForm.firstName}</label>
                            <input type="text" name="firstname" id="inputFirstName" class="form-control auth-form-control" placeholder="{$LANG.orderForm.firstName}" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} autofocus>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="auth-form-group">
                            <label for="inputLastName">{$LANG.orderForm.lastName}</label>
                            <input type="text" name="lastname" id="inputLastName" class="form-control auth-form-control" placeholder="{$LANG.orderForm.lastName}" value="{$clientlastname}" {if !in_array('lastname', $optionalFields)}required{/if}>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="auth-form-group">
                            <label for="inputEmail">{$LANG.orderForm.emailAddress}</label>
                            <input type="email" name="email" id="inputEmail" class="form-control auth-form-control" placeholder="{$LANG.orderForm.emailAddress}" value="{$clientemail}" required>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="auth-form-group">
                            <label for="inputPhone">{$LANG.orderForm.phoneNumber}</label>
                            <input type="tel" name="phonenumber" id="inputPhone" class="form-control auth-form-control" placeholder="{$LANG.orderForm.phoneNumber}" value="{$clientphonenumber}">
                        </div>
                    </div>
                </div>

                <h3 style="color: var(--ds-electric-blue); font-family: 'Orbitron', monospace; font-size: 1.2rem; margin: 2rem 0 1.5rem 0; text-align: center;">
                    <i class="fas fa-map-marker-alt"></i> Billing Address
                </h3>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="auth-form-group">
                            <label for="inputCompanyName">{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})</label>
                            <input type="text" name="companyname" id="inputCompanyName" class="form-control auth-form-control" placeholder="{$LANG.orderForm.companyName}" value="{$clientcompanyname}">
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="auth-form-group">
                            <label for="inputAddress1">{$LANG.orderForm.streetAddress}</label>
                            <input type="text" name="address1" id="inputAddress1" class="form-control auth-form-control" placeholder="{$LANG.orderForm.streetAddress}" value="{$clientaddress1}" {if !in_array('address1', $optionalFields)}required{/if}>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="auth-form-group">
                            <label for="inputAddress2">{$LANG.orderForm.streetAddress2}</label>
                            <input type="text" name="address2" id="inputAddress2" class="form-control auth-form-control" placeholder="{$LANG.orderForm.streetAddress2}" value="{$clientaddress2}">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="auth-form-group">
                            <label for="inputCity">{$LANG.orderForm.city}</label>
                            <input type="text" name="city" id="inputCity" class="form-control auth-form-control" placeholder="{$LANG.orderForm.city}" value="{$clientcity}" {if !in_array('city', $optionalFields)}required{/if}>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="auth-form-group">
                            <label for="state">{$LANG.orderForm.state}</label>
                            <input type="text" name="state" id="state" class="form-control auth-form-control" placeholder="{$LANG.orderForm.state}" value="{$clientstate}" {if !in_array('state', $optionalFields)}required{/if}>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="auth-form-group">
                            <label for="inputPostcode">{$LANG.orderForm.postcode}</label>
                            <input type="text" name="postcode" id="inputPostcode" class="form-control auth-form-control" placeholder="{$LANG.orderForm.postcode}" value="{$clientpostcode}" {if !in_array('postcode', $optionalFields)}required{/if}>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="auth-form-group">
                            <label for="inputCountry">{$LANG.orderForm.country}</label>
                            <select name="country" id="inputCountry" class="form-control auth-form-control">
                                {foreach $clientcountries as $countryCode => $countryName}
                                    <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
                                        {$countryName}
                                    </option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                    {if $showTaxIdField}
                        <div class="col-sm-12">
                            <div class="auth-form-group">
                                <label for="inputTaxId">{$taxLabel} ({$LANG.orderForm.optional})</label>
                                <input type="text" name="tax_id" id="inputTaxId" class="form-control auth-form-control" placeholder="{$taxLabel}" value="{$clientTaxId}">
                            </div>
                        </div>
                    {/if}
                </div>

                {if $customfields || $currencies}
                    <h3 style="color: var(--ds-cyber-purple); font-family: 'Orbitron', monospace; font-size: 1.2rem; margin: 2rem 0 1.5rem 0; text-align: center;">
                        <i class="fas fa-cog"></i> Additional Information
                    </h3>
                    <div class="row">
                        {if $customfields}
                            {foreach $customfields as $customfield}
                                <div class="col-sm-6">
                                    <div class="auth-form-group">
                                        <label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
                                        <div class="control">
                                            {$customfield.input}
                                            {if $customfield.description}
                                                <span class="field-help-text" style="color: var(--ds-text-light); font-size: 0.85rem;">{$customfield.description}</span>
                                            {/if}
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        {/if}
                        {if $currencies}
                            <div class="col-sm-6">
                                <div class="auth-form-group">
                                    <label for="inputCurrency">Currency</label>
                                    <select id="inputCurrency" name="currency" class="form-control auth-form-control">
                                        {foreach from=$currencies item=curr}
                                            <option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                        {/if}
                    </div>
                {/if}
            </div>

            <div id="containerNewUserSecurity" {if $remote_auth_prelinked && !$securityquestions } class="hidden"{/if}>
                <h3 style="color: var(--ds-neon-green); font-family: 'Orbitron', monospace; font-size: 1.2rem; margin: 2rem 0 1.5rem 0; text-align: center;">
                    <i class="fas fa-shield-alt"></i> Account Security
                </h3>
                
                <div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} hidden{/if}">
                    <div id="passwdFeedback" style="display: none;" class="alert alert-info text-center col-sm-12"></div>
                    <div class="col-sm-6">
                        <div class="auth-form-group">
                            <label for="inputNewPassword1">{$LANG.clientareapassword}</label>
                            <input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="form-control auth-form-control" placeholder="{$LANG.clientareapassword}" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="auth-form-group">
                            <label for="inputNewPassword2">{$LANG.clientareaconfirmpassword}</label>
                            <input type="password" name="password2" id="inputNewPassword2" class="form-control auth-form-control" placeholder="{$LANG.clientareaconfirmpassword}" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="auth-form-group">
                            <button type="button" class="btn btn-secondary auth-btn-secondary generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
                                <i class="fas fa-key"></i> {$LANG.generatePassword.btnLabel}
                            </button>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="password-strength-meter">
                            <div class="progress">
                                <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar">
                                </div>
                            </div>
                            <p class="text-center small text-muted" id="passwordStrengthTextLabel" style="color: var(--ds-text-light) !important;">{$LANG.pwstrength}: {$LANG.pwstrengthenter}</p>
                        </div>
                    </div>
                </div>

                {if $securityquestions}
                    <div class="row">
                        <div class="form-group col-sm-12">
                            <label for="inputSecurityQId">Security Question</label>
                            <select name="securityqid" id="inputSecurityQId" class="form-control auth-form-control">
                                <option value="">{$LANG.clientareasecurityquestion}</option>
                                {foreach $securityquestions as $question}
                                    <option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
                                        {$question.question}
                                    </option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="col-sm-12">
                            <div class="auth-form-group">
                                <label for="inputSecurityQAns">{$LANG.clientareasecurityanswer}</label>
                                <input type="password" name="securityqans" id="inputSecurityQAns" class="form-control auth-form-control" placeholder="{$LANG.clientareasecurityanswer}" autocomplete="off">
                            </div>
                        </div>
                    </div>
                {/if}
            </div>

            {if $showMarketingEmailOptIn}
                <div class="auth-form-group" style="text-align: center;">
                    <h4 style="color: var(--ds-text-white); font-size: 1.1rem; margin-bottom: 1rem;">{lang key='emailMarketing.joinOurMailingList'}</h4>
                    <p style="color: var(--ds-text-light); margin-bottom: 1rem;">{$marketingEmailOptInMessage}</p>
                    <div class="auth-checkbox" style="justify-content: center;">
                        <input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} id="marketingoptin">
                        <label for="marketingoptin">Yes, I'd like to receive marketing emails</label>
                    </div>
                </div>
            {/if}

            {include file="$template/includes/captcha.tpl"}

            {if $accepttos}
                <div class="auth-form-group">
                    <div style="background: rgba(220, 53, 69, 0.1); border: 1px solid #dc3545; border-radius: 8px; padding: 1rem; margin: 1rem 0;">
                        <h4 style="color: #dc3545; font-size: 1rem; margin-bottom: 0.5rem;">
                            <i class="fas fa-exclamation-triangle"></i> {$LANG.ordertos}
                        </h4>
                        <div class="auth-checkbox">
                            <input type="checkbox" name="accepttos" class="accepttos" id="accepttos" required>
                            <label for="accepttos">
                                {$LANG.ordertosagreement} <a href="{$tosurl}" target="_blank" style="color: var(--ds-neon-green);">{$LANG.ordertos}</a>
                            </label>
                        </div>
                    </div>
                </div>
            {/if}
            
            <div class="auth-form-group">
                <input class="btn btn-primary auth-btn auth-btn-primary{$captcha->getButtonClass($captchaForm)}" type="submit" value="{$LANG.clientregistertitle}"/>
            </div>

            <div class="auth-links">
                <p>Already have an account? <a href="{$WEB_ROOT}/login.php" class="auth-link">Login here</a></p>
            </div>
        </form>
    </div>
</div>
{/if}
