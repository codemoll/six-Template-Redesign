<div style="color: var(--ds-text-light); margin-bottom: 1.5rem; text-align: center;">
    <i class="fas fa-envelope" style="font-size: 2rem; color: var(--ds-electric-blue); margin-bottom: 1rem; display: block;"></i>
    <p>{$LANG.pwresetemailneeded}</p>
</div>

<form method="post" action="{routePath('password-reset-validate-email')}" class="auth-form" role="form">
    <input type="hidden" name="action" value="reset" />

    <div class="auth-form-group">
        <label for="inputEmail">{$LANG.loginemail}</label>
        <input type="email" name="email" class="form-control auth-form-control" id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
    </div>

    {if $captcha->isEnabled()}
        <div class="auth-form-group text-center">
            {include file="$template/includes/captcha.tpl"}
        </div>
    {/if}

    <div class="auth-form-group">
        <button type="submit" class="btn btn-primary auth-btn auth-btn-primary{$captcha->getButtonClass($captchaForm)}">
            <i class="fas fa-paper-plane"></i> {$LANG.pwresetsubmit}
        </button>
    </div>

    <div class="auth-links">
        <p><a href="{$WEB_ROOT}/login.php" class="auth-link">
            <i class="fas fa-arrow-left"></i> Back to Login
        </a></p>
    </div>
</form>
