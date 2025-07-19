<div class="logincontainer{if $linkableProviders} with-social{/if}">
    <div class="auth-card">
        <div class="auth-header">
            <div class="auth-logo">
                <span class="primary">DoubleSpeed</span><span class="secondary">Host</span>
            </div>
            <p class="auth-subtitle">{$LANG.restrictedpage}</p>
        </div>

        {include file="$template/includes/flashmessage.tpl"}

        <div class="providerLinkingFeedback"></div>

        <div class="row">
            <div class="col-sm-{if $linkableProviders}12{else}12{/if}">
                <form method="post" action="{routePath('login-validate')}" class="auth-form login-form" role="form">
                    <div class="auth-form-group">
                        <label for="inputEmail">{$LANG.clientareaemail}</label>
                        <input type="email" name="username" class="form-control auth-form-control" id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
                    </div>

                    <div class="auth-form-group">
                        <label for="inputPassword">{$LANG.clientareapassword}</label>
                        <input type="password" name="password" class="form-control auth-form-control" id="inputPassword" placeholder="{$LANG.clientareapassword}" autocomplete="off" >
                    </div>

                    <div class="auth-checkbox">
                        <input type="checkbox" name="rememberme" id="rememberme" />
                        <label for="rememberme">{$LANG.loginrememberme}</label>
                    </div>

                    {if $captcha->isEnabled()}
                        <div class="auth-form-group text-center">
                            {include file="$template/includes/captcha.tpl"}
                        </div>
                    {/if}

                    <div class="auth-form-group">
                        <input id="login" type="submit" class="btn btn-primary auth-btn auth-btn-primary{$captcha->getButtonClass($captchaForm)}" value="{$LANG.loginbutton}" />
                        <a href="{routePath('password-reset-begin')}" class="btn btn-default auth-btn auth-btn-secondary">{$LANG.forgotpw}</a>
                    </div>
                </form>

                {if $linkableProviders}
                    <div class="auth-divider">
                        <span>or continue with</span>
                    </div>
                    <div class="auth-social-login">
                        {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
                    </div>
                {/if}

                <div class="auth-links">
                    <p>Don't have an account? <a href="{$WEB_ROOT}/register.php" class="auth-link">Sign up here</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
