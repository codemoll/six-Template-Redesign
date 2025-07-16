{include file="$template/header.tpl"}

<!-- Hero Section -->
<section style="background: linear-gradient(135deg, #121212, #1a1a1a 50%, #2a2a2a); min-height: 100vh; display: flex; align-items: center; justify-content: center; position: relative; overflow: hidden;">
    <!-- Animated Background Elements -->
    <div style="position: absolute; inset: 0;">
        <div style="position: absolute; top: 5rem; left: 2.5rem; width: 16rem; height: 16rem; background-color: rgba(0, 255, 136, 0.1); border-radius: 9999px; filter: blur(64px); animation: float 3s ease-in-out infinite;"></div>
        <div style="position: absolute; bottom: 5rem; right: 2.5rem; width: 24rem; height: 24rem; background-color: rgba(0, 123, 255, 0.1); border-radius: 9999px; filter: blur(64px); animation: float 3s ease-in-out infinite; animation-delay: 1s;"></div>
        <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 12rem; height: 12rem; background-color: rgba(155, 89, 182, 0.1); border-radius: 9999px; filter: blur(64px); animation: float 3s ease-in-out infinite; animation-delay: 2s;"></div>
    </div>
    
    <div style="max-width: 80rem; margin: 0 auto; padding: 0 1rem; position: relative; z-index: 10;">
        <div style="text-align: center;">
            <h1 style="font-size: 3rem; font-family: Orbitron, monospace; font-weight: 700; margin-bottom: 1.5rem;">
                <span class="glow-text" style="background: linear-gradient(to right, #00ff88, #007bff); -webkit-background-clip: text; background-clip: text; color: transparent;">{if $companyname}{$companyname}{else}DoubleSpeed{/if}</span>
                <span style="color: white;">Host</span>
            </h1>
            <p style="font-size: 1.25rem; color: #bfbfbf; margin-bottom: 2rem; max-width: 48rem; margin-left: auto; margin-right: auto; line-height: 1.625;">
                Experience lightning-fast hosting with cutting-edge technology and 24/7 expert support.
            </p>
            <div style="display: flex; flex-direction: column; gap: 1rem; justify-content: center; align-items: center;">
                <a href="{$WEB_ROOT}/cart.php" class="btn-primary" style="background-color: #00ff88; color: #121212; padding: 1rem 2rem; font-size: 1.125rem; font-weight: 600; border-radius: 0.5rem; text-decoration: none; transition: all 0.3s ease; display: inline-flex; align-items: center;">
                    Get Started Now
                    <svg style="width: 1.25rem; height: 1.25rem; margin-left: 0.5rem;" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6"/>
                    </svg>
                </a>
                <a href="#features" class="btn-outline" style="border: 2px solid #00ff88; color: #00ff88; background-color: transparent; padding: 1rem 2rem; font-size: 1.125rem; font-weight: 600; border-radius: 0.5rem; text-decoration: none; transition: all 0.3s ease;">
                    Learn More
                </a>
            </div>
            
            <!-- Stats -->
            <div style="display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 2rem; margin-top: 4rem;">
                <div style="text-align: center;">
                    <div style="font-size: 2.25rem; font-family: Orbitron, monospace; font-weight: 700; color: #00ff88; margin-bottom: 0.5rem;">99.9%</div>
                    <div style="color: #bfbfbf; font-size: 0.875rem;">Uptime Guarantee</div>
                </div>
                <div style="text-align: center;">
                    <div style="font-size: 2.25rem; font-family: Orbitron, monospace; font-weight: 700; color: #007bff; margin-bottom: 0.5rem;">24/7</div>
                    <div style="color: #bfbfbf; font-size: 0.875rem;">Expert Support</div>
                </div>
                <div style="text-align: center;">
                    <div style="font-size: 2.25rem; font-family: Orbitron, monospace; font-weight: 700; color: #9b59b6; margin-bottom: 0.5rem;">50K+</div>
                    <div style="color: #bfbfbf; font-size: 0.875rem;">Happy Clients</div>
                </div>
                <div style="text-align: center;">
                    <div style="font-size: 2.25rem; font-family: Orbitron, monospace; font-weight: 700; color: #00ff88; margin-bottom: 0.5rem;">&lt;100ms</div>
                    <div style="color: #bfbfbf; font-size: 0.875rem;">Response Time</div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Features Section -->
<section id="features" style="padding: 5rem 0; background-color: #1a1a1a;">
    <div style="max-width: 80rem; margin: 0 auto; padding: 0 1rem;">
        <div style="text-align: center; margin-bottom: 4rem;">
            <h2 style="font-size: 2.25rem; font-family: Orbitron, monospace; font-weight: 700; margin-bottom: 1rem;">
                <span class="glow-text" style="background: linear-gradient(to right, #00ff88, #007bff); -webkit-background-clip: text; background-clip: text; color: transparent;">Cutting-Edge</span> Features
            </h2>
            <p style="font-size: 1.25rem; color: #bfbfbf; max-width: 48rem; margin: 0 auto;">
                Discover why thousands of businesses trust us for their web hosting needs.
            </p>
        </div>
        
        <div style="display: grid; grid-template-columns: repeat(1, minmax(0, 1fr)); gap: 2rem;">
            <!-- Feature 1 -->
            <div class="card-dark" style="background-color: #2a2a2a; border: 1px solid #374151; border-radius: 0.5rem; padding: 1.5rem; text-align: center; transition: all 0.3s ease;">
                <div style="width: 4rem; height: 4rem; background: linear-gradient(135deg, #00ff88, #007bff); border-radius: 0.5rem; display: flex; align-items: center; justify-content: center; margin: 0 auto 1.5rem; transition: transform 0.3s ease;">
                    <svg style="width: 2rem; height: 2rem; color: #121212;" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M11.3 1.046A1 1 0 0112 2v5h4a1 1 0 01.82 1.573l-7 10A1 1 0 018 18v-5H4a1 1 0 01-.82-1.573l7-10a1 1 0 011.12-.38z" clip-rule="evenodd"/>
                    </svg>
                </div>
                <h3 style="font-size: 1.25rem; font-family: Orbitron, monospace; font-weight: 600; color: white; margin-bottom: 1rem;">Lightning Fast</h3>
                <p style="color: #bfbfbf;">
                    SSD storage, CDN integration, and optimized servers ensure your website loads in milliseconds.
                </p>
            </div>
            
            <!-- Feature 2 -->
            <div class="card-dark" style="background-color: #2a2a2a; border: 1px solid #374151; border-radius: 0.5rem; padding: 1.5rem; text-align: center; transition: all 0.3s ease;">
                <div style="width: 4rem; height: 4rem; background: linear-gradient(135deg, #007bff, #9b59b6); border-radius: 0.5rem; display: flex; align-items: center; justify-content: center; margin: 0 auto 1.5rem; transition: transform 0.3s ease;">
                    <svg style="width: 2rem; height: 2rem; color: #121212;" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M2.166 4.999A11.954 11.954 0 0010 1.944 11.954 11.954 0 0017.834 5c.11.65.166 1.32.166 2.001 0 5.225-3.34 9.67-8 11.317C5.34 16.67 2 12.225 2 7c0-.682.057-1.35.166-2.001zm11.541 3.708a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                    </svg>
                </div>
                <h3 style="font-size: 1.25rem; font-family: Orbitron, monospace; font-weight: 600; color: white; margin-bottom: 1rem;">Secure & Reliable</h3>
                <p style="color: #bfbfbf;">
                    Advanced security measures, daily backups, and 99.9% uptime guarantee keep your data safe.
                </p>
            </div>
            
            <!-- Feature 3 -->
            <div class="card-dark" style="background-color: #2a2a2a; border: 1px solid #374151; border-radius: 0.5rem; padding: 1.5rem; text-align: center; transition: all 0.3s ease;">
                <div style="width: 4rem; height: 4rem; background: linear-gradient(135deg, #9b59b6, #00ff88); border-radius: 0.5rem; display: flex; align-items: center; justify-content: center; margin: 0 auto 1.5rem; transition: transform 0.3s ease;">
                    <svg style="width: 2rem; height: 2rem; color: #121212;" fill="currentColor" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-6-3a2 2 0 11-4 0 2 2 0 014 0zm-2 4a5 5 0 00-4.546 2.916A5.986 5.986 0 0010 16a5.986 5.986 0 004.546-2.084A5 5 0 0010 11z" clip-rule="evenodd"/>
                    </svg>
                </div>
                <h3 style="font-size: 1.25rem; font-family: Orbitron, monospace; font-weight: 600; color: white; margin-bottom: 1rem;">Expert Support</h3>
                <p style="color: #bfbfbf;">
                    24/7 technical support from hosting experts who actually know what they're talking about.
                </p>
            </div>
        </div>
    </div>
</section>

{if $twitterusername}

    <section style="padding: 3rem 0; background-color: #121212;">
        <div style="max-width: 80rem; margin: 0 auto; padding: 0 1rem;">
            <h2 style="font-size: 1.875rem; font-family: Orbitron, monospace; font-weight: 700; margin-bottom: 2rem; text-align: center; color: white;">{$LANG.twitterlatesttweets}</h2>

            <div id="twitterFeedOutput" style="text-align: center;">
                <p><img src="{$BASE_PATH_IMG}/loading.gif" /></p>
            </div>
        </div>
    </section>

    <script type="text/javascript" src="{assetPath file='twitter.js'}"></script>

{elseif $announcements}

    <section style="padding: 3rem 0; background-color: #121212;">
        <div style="max-width: 80rem; margin: 0 auto; padding: 0 1rem;">
            <h2 style="font-size: 1.875rem; font-family: Orbitron, monospace; font-weight: 700; margin-bottom: 2rem; text-align: center; color: white;">{$LANG.news}</h2>

            <div style="display: grid; grid-template-columns: repeat(1, minmax(0, 1fr)); gap: 2rem;">
                {foreach $announcements as $announcement}
                    {if $announcement@index < 2}
                        <div class="card-dark" style="background-color: #2a2a2a; border: 1px solid #374151; border-radius: 0.5rem; padding: 1.5rem; transition: all 0.3s ease;">
                            <h3 style="margin-bottom: 1rem;">
                                <span style="background-color: #00ff88; color: #121212; padding: 0.25rem 0.5rem; border-radius: 0.25rem; font-size: 0.75rem; font-weight: 500; margin-right: 0.5rem;">
                                    {$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}
                                </span>
                                <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" style="color: white; text-decoration: none; font-weight: 600;">{$announcement.title}</a>
                            </h3>

                            <blockquote style="border-left: 4px solid #00ff88; padding-left: 1rem; margin: 0;">
                                <p style="color: #bfbfbf; margin: 0;">
                                    {if $announcement.text|strip_tags|strlen < 350}
                                        {$announcement.text}
                                    {else}
                                        {$announcement.summary}
                                        <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" style="color: #00ff88; text-decoration: none; font-weight: 500;">{$LANG.readmore} &raquo;</a>
                                    {/if}
                                </p>
                            </blockquote>

                            {if $announcementsFbRecommend}
                                <script>
                                    (function(d, s, id) {
                                        var js, fjs = d.getElementsByTagName(s)[0];
                                        if (d.getElementById(id)) {
                                            return;
                                        }
                                        js = d.createElement(s); js.id = id;
                                        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                                        fjs.parentNode.insertBefore(js, fjs);
                                    }(document, 'script', 'facebook-jssdk'));
                                </script>
                                <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                                <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
                            {/if}
                        </div>
                    {/if}
                {/foreach}
            </div>
        </div>
    </section>

{/if}

<style>
/* Additional responsive styles */
@media (min-width: 768px) {
    section[style*="grid-template-columns: repeat(1"] > div > div:last-child {
        grid-template-columns: repeat(3, minmax(0, 1fr)) !important;
    }
    section[style*="grid-template-columns: repeat(2"] > div > div:last-child {
        grid-template-columns: repeat(4, minmax(0, 1fr)) !important;
    }
    section[style*="flex-direction: column"] > div > div:nth-child(3) {
        flex-direction: row !important;
    }
}

@media (min-width: 1024px) {
    h1 {
        font-size: 4.5rem !important;
    }
    p[style*="font-size: 1.25rem"] {
        font-size: 1.5rem !important;
    }
}

/* Hover effects for cards */
.card-dark:hover {
    border-color: #00ff88;
    box-shadow: 0 0 20px rgba(0, 255, 136, 0.5);
}

.card-dark:hover > div:first-child {
    transform: scale(1.1);
}

/* Hover effects for buttons */
.btn-primary:hover {
    box-shadow: 0 0 20px rgba(0, 255, 136, 0.5);
    transform: scale(1.05);
}

.btn-outline:hover {
    background-color: #00ff88;
    color: #121212;
    box-shadow: 0 0 20px rgba(0, 255, 136, 0.5);
}
</style>

{include file="$template/footer.tpl"}
