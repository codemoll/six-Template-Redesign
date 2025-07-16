{include file="$template/header.tpl"}

<div class="min-h-screen flex items-center justify-center bg-dark-bg py-12 px-4 sm:px-6 lg:px-8">
    <div class="max-w-md w-full space-y-8">
        <div class="text-center">
            <div class="mx-auto w-20 h-20 bg-gradient-to-br from-neon-green to-electric-blue rounded-full flex items-center justify-center mb-6">
                <svg class="w-10 h-10 text-dark-bg" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd"/>
                </svg>
            </div>
            <h2 class="text-3xl font-orbitron font-bold text-white">
                {$LANG.login}
            </h2>
            <p class="mt-2 text-sm text-text-light">
                {$LANG.restrictedpage}
            </p>
            <p class="mt-2 text-sm text-text-light">
                Or
                <a href="{$WEB_ROOT}/register.php" class="font-medium text-neon-green hover:text-electric-blue transition-colors duration-300">
                    {$LANG.register}
                </a>
            </p>
        </div>
        
        <div class="card-dark">
            {include file="$template/includes/flashmessage.tpl"}
            
            <div class="providerLinkingFeedback"></div>

            <form method="post" action="{routePath('login-validate')}" class="login-form space-y-6" role="form">
                <div>
                    <label for="inputEmail" class="block text-sm font-medium text-text-light mb-2">
                        {$LANG.clientareaemail}
                    </label>
                    <input type="email" name="username" class="input-dark w-full focus:shadow-glow-green" 
                           id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
                </div>
                
                <div>
                    <label for="inputPassword" class="block text-sm font-medium text-text-light mb-2">
                        {$LANG.clientareapassword}
                    </label>
                    <input type="password" name="password" class="input-dark w-full focus:shadow-glow-green" 
                           id="inputPassword" placeholder="{$LANG.clientareapassword}" autocomplete="off">
                </div>
                
                <div class="flex items-center justify-between">
                    <div class="flex items-center">
                        <input id="rememberme" name="rememberme" type="checkbox" 
                               class="h-4 w-4 text-neon-green bg-dark-surface border-gray-600 rounded focus:ring-neon-green focus:ring-2">
                        <label for="rememberme" class="ml-2 block text-sm text-text-light">
                            {$LANG.loginrememberme}
                        </label>
                    </div>
                    
                    <div class="text-sm">
                        <a href="{routePath('password-reset-begin')}" class="font-medium text-neon-green hover:text-electric-blue transition-colors duration-300">
                            {$LANG.forgotpw}
                        </a>
                    </div>
                </div>
                
                {if $captcha->isEnabled()}
                    <div class="text-center">
                        {include file="$template/includes/captcha.tpl"}
                    </div>
                {/if}
                
                <div>
                    <button id="login" type="submit" class="btn-primary w-full text-lg{$captcha->getButtonClass($captchaForm)}">
                        <svg class="w-5 h-5 mr-2 inline" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013 3v1"/>
                        </svg>
                        {$LANG.loginbutton}
                    </button>
                </div>
            </form>
            
            <!-- Social Login -->
            {if $linkableProviders}
                <div class="mt-6">
                    <div class="relative">
                        <div class="absolute inset-0 flex items-center">
                            <div class="w-full border-t border-gray-600"></div>
                        </div>
                        <div class="relative flex justify-center text-sm">
                            <span class="bg-dark-surface px-2 text-text-light">Or continue with</span>
                        </div>
                    </div>
                    
                    <div class="mt-6">
                        {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
                    </div>
                </div>
            {/if}
        </div>
        
        <!-- Additional Links -->
        <div class="text-center space-y-2">
            <p class="text-sm text-text-light">
                Don't have an account?
                <a href="{$WEB_ROOT}/register.php" class="font-medium text-neon-green hover:text-electric-blue transition-colors duration-300">
                    {$LANG.register}
                </a>
            </p>
            <p class="text-sm text-text-light">
                Need help?
                <a href="{$WEB_ROOT}/contact.php" class="font-medium text-neon-green hover:text-electric-blue transition-colors duration-300">
                    Contact Support
                </a>
            </p>
        </div>
    </div>
</div>

{include file="$template/footer.tpl"}
