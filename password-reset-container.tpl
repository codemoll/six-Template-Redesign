<div class="auth-container">
    <div class="auth-card">
        <div class="auth-header">
            <div class="auth-logo">
                <span class="primary">DoubleSpeed</span><span class="secondary">Host</span>
            </div>
            <p class="auth-subtitle">Reset your password</p>
        </div>

        {if $loggedin && $innerTemplate}
            {include file="$template/includes/alert.tpl" type="error" msg=$LANG.noPasswordResetWhenLoggedIn textcenter=true}
        {else}
            {if $successMessage}
                <div style="background: rgba(0, 255, 136, 0.1); border: 1px solid var(--ds-neon-green); border-radius: 8px; padding: 1.5rem; text-align: center; margin-bottom: 1.5rem;">
                    <h4 style="color: var(--ds-neon-green); margin-bottom: 1rem;">
                        <i class="fas fa-check-circle"></i> {$successTitle}
                    </h4>
                    <p style="color: var(--ds-text-white); margin: 0;">{$successMessage}</p>
                </div>
            {else}
                {if $errorMessage}
                    {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
                {/if}

                {if $innerTemplate}
                    {include file="$template/password-reset-$innerTemplate.tpl"}
                {/if}
            {/if}
        {/if}
    </div>
</div>
