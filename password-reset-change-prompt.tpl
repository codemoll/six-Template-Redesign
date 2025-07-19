<div style="color: var(--ds-text-light); margin-bottom: 1.5rem; text-align: center;">
    <i class="fas fa-key" style="font-size: 2rem; color: var(--ds-neon-green); margin-bottom: 1rem; display: block;"></i>
    <p>{$LANG.pwresetenternewpw}</p>
</div>

<form class="auth-form using-password-strength" method="POST" action="{routePath('password-reset-change-perform')}">
    <input type="hidden" name="answer" id="answer" value="{$securityAnswer}" />

    <div id="newPassword1" class="auth-form-group">
        <label for="inputNewPassword1">{$LANG.newpassword}</label>
        <input type="password" name="newpw" id="inputNewPassword1" class="form-control auth-form-control" autocomplete="off" />
    </div>

    <div id="newPassword2" class="auth-form-group">
        <label for="inputNewPassword2">{$LANG.confirmnewpassword}</label>
        <input type="password" name="confirmpw" id="inputNewPassword2" class="form-control auth-form-control" autocomplete="off" />
        <div id="inputNewPassword2Msg"></div>
    </div>

    <div class="auth-form-group">
        <label style="color: var(--ds-text-white); font-weight: 500; margin-bottom: 0.5rem; display: block;">{$LANG.pwstrength}</label>
        {include file="$template/includes/pwstrength.tpl"}
    </div>

    <div class="auth-form-group">
        <div style="display: flex; gap: 1rem;">
            <input class="btn btn-primary auth-btn auth-btn-primary" type="submit" name="submit" value="{$LANG.clientareasavechanges}" style="flex: 1;" />
            <input class="btn btn-default auth-btn auth-btn-secondary" type="reset" value="{$LANG.cancel}" style="flex: 1;" />
        </div>
    </div>

    <div class="auth-links">
        <p><a href="{$WEB_ROOT}/login.php" class="auth-link">
            <i class="fas fa-arrow-left"></i> Back to Login
        </a></p>
    </div>
</form>
