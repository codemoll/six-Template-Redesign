{include file="$template/header.tpl"}

<!-- Hero Section -->
<section class="hero-section d-flex align-items-center justify-content-center position-relative">
    <!-- Animated Background Effects -->
    <div class="hero-bg-effects position-absolute w-100 h-100"></div>
    
    <div class="container position-relative">
        <div class="row justify-content-center text-center">
            <div class="col-lg-10 col-xl-8">
                <h1 class="hero-title mb-4">
                    <span class="text-primary glow-text">DoubleSpeed</span>
                    <span class="text-white">Host</span>
                </h1>
                <p class="hero-subtitle text-light mb-5">
                    Experience lightning-fast hosting with cutting-edge technology and 24/7 expert support.
                </p>
                <div class="hero-actions mb-5">
                    <a href="{$WEB_ROOT}/cart.php" class="btn btn-primary btn-lg me-3 mb-3">
                        Get Started Now
                        <i class="fas fa-arrow-right ms-2"></i>
                    </a>
                    <a href="#features" class="btn btn-outline-primary btn-lg mb-3">
                        Learn More
                    </a>
                </div>
                
                <!-- Stats -->
                <div class="row hero-stats mt-5">
                    <div class="col-6 col-md-3 mb-3">
                        <div class="stat-number text-primary">99.9%</div>
                        <div class="stat-label text-light">Uptime Guarantee</div>
                    </div>
                    <div class="col-6 col-md-3 mb-3">
                        <div class="stat-number text-info">24/7</div>
                        <div class="stat-label text-light">Expert Support</div>
                    </div>
                    <div class="col-6 col-md-3 mb-3">
                        <div class="stat-number text-warning">15+</div>
                        <div class="stat-label text-light">Years Experience</div>
                    </div>
                    <div class="col-6 col-md-3 mb-3">
                        <div class="stat-number text-primary">10K+</div>
                        <div class="stat-label text-light">Happy Customers</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Domain Search Section -->
{if $registerdomainenabled || $transferdomainenabled}
<section class="domain-search-section py-5 bg-secondary">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="text-center mb-4">
                    <h2 class="text-white mb-3">Find Your Perfect Domain</h2>
                    <p class="text-light">Search for the ideal domain name for your business or project.</p>
                </div>
                
                <form method="post" action="domainchecker.php" id="frmDomainHomepage" class="domain-search-form">
                    <input type="hidden" name="transfer" />
                    <div class="input-group input-group-lg">
                        <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                        <div class="input-group-append">
                            {if $registerdomainenabled}
                                <input type="submit" class="btn btn-primary" value="{$LANG.search}" id="btnDomainSearch" />
                            {/if}
                            {if $transferdomainenabled}
                                <input type="submit" id="btnTransfer" class="btn btn-secondary" value="{$LANG.domainstransfer}" />
                            {/if}
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
{/if}

<!-- Features Section -->
<section id="features" class="py-5 bg-dark">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-lg-8">
                <h2 class="display-4 fw-bold mb-4">
                    <span class="text-primary glow-text">Cutting-Edge</span> Features
                </h2>
                <p class="lead text-light">
                    Discover why thousands of businesses trust DoubleSpeed Host for their web hosting needs.
                </p>
            </div>
        </div>
        
        <div class="row">
            <!-- Feature 1 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100 text-center feature-card">
                    <div class="card-body">
                        <div class="feature-icon mx-auto mb-4">
                            <i class="fas fa-bolt"></i>
                        </div>
                        <h4 class="card-title fw-bold text-white mb-3">Lightning Fast</h4>
                        <p class="card-text text-light">
                            SSD storage, CDN integration, and optimized servers ensure your website loads in milliseconds.
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Feature 2 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100 text-center feature-card">
                    <div class="card-body">
                        <div class="feature-icon mx-auto mb-4">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <h4 class="card-title fw-bold text-white mb-3">Secure & Reliable</h4>
                        <p class="card-text text-light">
                            Advanced security measures, daily backups, and 99.9% uptime guarantee keep your data safe.
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Feature 3 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100 text-center feature-card">
                    <div class="card-body">
                        <div class="feature-icon mx-auto mb-4">
                            <i class="fas fa-headset"></i>
                        </div>
                        <h4 class="card-title fw-bold text-white mb-3">Expert Support</h4>
                        <p class="card-text text-light">
                            24/7 technical support from hosting experts who actually know what they're talking about.
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Feature 4 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100 text-center feature-card">
                    <div class="card-body">
                        <div class="feature-icon mx-auto mb-4">
                            <i class="fas fa-server"></i>
                        </div>
                        <h4 class="card-title fw-bold text-white mb-3">High Performance</h4>
                        <p class="card-text text-light">
                            Latest hardware, optimized configurations, and smart caching for maximum performance.
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Feature 5 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100 text-center feature-card">
                    <div class="card-body">
                        <div class="feature-icon mx-auto mb-4">
                            <i class="fas fa-cloud"></i>
                        </div>
                        <h4 class="card-title fw-bold text-white mb-3">Cloud Technology</h4>
                        <p class="card-text text-light">
                            Scalable cloud infrastructure that grows with your business needs and traffic demands.
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Feature 6 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100 text-center feature-card">
                    <div class="card-body">
                        <div class="feature-icon mx-auto mb-4">
                            <i class="fas fa-tools"></i>
                        </div>
                        <h4 class="card-title fw-bold text-white mb-3">Easy Management</h4>
                        <p class="card-text text-light">
                            Intuitive control panel and one-click installations make managing your hosting effortless.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Quick Actions -->
<section class="quick-actions py-5 bg-secondary">
    <div class="container">
        <div class="row justify-content-center text-center mb-4">
            <div class="col-lg-8">
                <h3 class="text-white mb-3">How Can We Help You Today?</h3>
                <p class="text-light">Choose from our most popular services to get started quickly.</p>
            </div>
        </div>
        
        <div class="row">
            {if $registerdomainenabled || $transferdomainenabled}
                <div class="col-lg-3 col-md-6 mb-4">
                    <a href="domainchecker.php" class="card-dark text-center h-100 d-block text-decoration-none">
                        <div class="p-4">
                            <i class="fas fa-globe fa-3x text-primary mb-3"></i>
                            <h5 class="text-white mb-2">{$LANG.buyadomain}</h5>
                            <p class="text-light small mb-0">Find and register the perfect domain for your website</p>
                        </div>
                    </a>
                </div>
            {/if}
            <div class="col-lg-3 col-md-6 mb-4">
                <a href="{$WEB_ROOT}/cart.php" class="card-dark text-center h-100 d-block text-decoration-none">
                    <div class="p-4">
                        <i class="fas fa-server fa-3x text-primary mb-3"></i>
                        <h5 class="text-white mb-2">{$LANG.orderhosting}</h5>
                        <p class="text-light small mb-0">Choose from our high-performance hosting plans</p>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <a href="clientarea.php" class="card-dark text-center h-100 d-block text-decoration-none">
                    <div class="p-4">
                        <i class="fas fa-credit-card fa-3x text-primary mb-3"></i>
                        <h5 class="text-white mb-2">{$LANG.makepayment}</h5>
                        <p class="text-light small mb-0">Manage your account and make payments securely</p>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <a href="submitticket.php" class="card-dark text-center h-100 d-block text-decoration-none">
                    <div class="p-4">
                        <i class="fas fa-life-ring fa-3x text-primary mb-3"></i>
                        <h5 class="text-white mb-2">{$LANG.getsupport}</h5>
                        <p class="text-light small mb-0">Get help from our expert technical support team</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- Announcements or Twitter Feed -->
{if $twitterusername}
    <section class="py-5 bg-dark">
        <div class="container">
            <h2 class="text-center text-white mb-4">{$LANG.twitterlatesttweets}</h2>
            <div id="twitterFeedOutput" class="text-center">
                <p><img src="{$BASE_PATH_IMG}/loading.gif" /></p>
            </div>
        </div>
    </section>
    <script type="text/javascript" src="{assetPath file='twitter.js'}"></script>
{elseif $announcements}
    <section class="py-5 bg-dark">
        <div class="container">
            <h2 class="text-center text-white mb-5">{$LANG.news}</h2>
            <div class="row">
                {foreach $announcements as $announcement}
                    {if $announcement@index < 2}
                        <div class="col-md-6 mb-4">
                            <div class="card h-100 bg-secondary border-0">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-start mb-3">
                                        <span class="badge bg-primary">
                                            {$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}
                                        </span>
                                    </div>
                                    <h5 class="card-title text-white">
                                        <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="text-white text-decoration-none">
                                            {$announcement.title}
                                        </a>
                                    </h5>
                                    <div class="card-text text-light">
                                        {if $announcement.text|strip_tags|strlen < 350}
                                            {$announcement.text}
                                        {else}
                                            {$announcement.summary}
                                            <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="btn btn-outline-primary btn-sm mt-2">
                                                {$LANG.readmore} &raquo;
                                            </a>
                                        {/if}
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/if}
                {/foreach}
            </div>
        </div>
    </section>
{/if}

{include file="$template/footer.tpl"}
