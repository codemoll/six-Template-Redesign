<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    
    {if $systemsslurl}
        <base href="{$systemsslurl}" />
    {else}
        <base href="{$systemurl}" />
    {/if}
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    
    {include file="$template/includes/head.tpl"}
    
    <!-- Custom DoubleSpeed Theme CSS -->
    <link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/style.css" />
    
    <!-- Meta Tags -->
    <meta name="description" content="{$companyname} - Fast, reliable, and secure hosting solutions with cutting-edge technology and 24/7 support.">
    <meta name="keywords" content="web hosting, cloud hosting, dedicated servers, VPS, domain registration, SSL certificates">
    <meta name="author" content="{$companyname}">

    {$headoutput}
    
    <!-- Advanced Menu JavaScript -->
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        initAdvancedMenu();
    });
    
    function initAdvancedMenu() {
        var mobileMenuButton = document.getElementById('mobile-menu-button');
        var mobileMenu = document.getElementById('mobile-menu');
        var userMenuButton = document.getElementById('user-menu-button');
        var userMenu = document.getElementById('user-menu');
        
        // Mobile menu functionality
        if (mobileMenuButton && mobileMenu) {
            mobileMenuButton.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                mobileMenu.classList.toggle('show');
                // Close user menu if open
                if (userMenu) {
                    userMenu.classList.remove('show');
                }
            });
        }
        
        // User menu functionality
        if (userMenuButton && userMenu) {
            userMenuButton.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                userMenu.classList.toggle('show');
                // Close mobile menu if open
                if (mobileMenu) {
                    mobileMenu.classList.remove('show');
                }
            });
        }
        
        // Close menus when clicking outside
        document.addEventListener('click', function(event) {
            if (mobileMenu && mobileMenuButton && 
                !mobileMenuButton.contains(event.target) && 
                !mobileMenu.contains(event.target)) {
                mobileMenu.classList.remove('show');
            }
            
            if (userMenu && userMenuButton && 
                !userMenuButton.contains(event.target) && 
                !userMenu.contains(event.target)) {
                userMenu.classList.remove('show');
            }
        });
        
        // Close menus on escape key
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape') {
                if (mobileMenu) mobileMenu.classList.remove('show');
                if (userMenu) userMenu.classList.remove('show');
            }
        });
    }
    </script>
</head>

<body class="bg-dark-bg text-text-white min-h-screen" data-phone-cc-input="{$phoneNumberInputStyle}">
{if $captcha}{$captcha->getMarkup()}{/if}
{$headeroutput}

<!-- Navigation -->
<nav id="header" class="navbar navbar-default navbar-main" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <!-- Logo -->
            <div class="navbar-brand">
                {if $assetLogoPath}
                    <a href="{$WEB_ROOT}/index.php" class="logo">
                        <img src="{$assetLogoPath}" alt="{$companyname}">
                        <span class="font-orbitron font-bold glow-text">{$companyname}</span>
                    </a>
                {else}
                    <a href="{$WEB_ROOT}/index.php" class="logo-text font-orbitron font-bold glow-text">{$companyname}</a>
                {/if}
            </div>
            
            <!-- Mobile menu button -->
            <button type="button" class="navbar-toggle" id="mobile-menu-button" data-toggle="collapse" data-target="#primary-nav">
                <span class="sr-only">{lang key='toggleNav'}</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="primary-nav">
            <ul class="nav navbar-nav">
                {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <!-- Language Selector -->
                {if $languagechangeenabled && count($locales) > 1}
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            {$activeLocale.localisedName}
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            {foreach $locales as $locale}
                                <li>
                                    <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                </li>
                            {/foreach}
                        </ul>
                    </li>
                {/if}
                
                {if $loggedin}
                    <!-- User Menu -->
                    <li class="user-menu">
                        <a href="#" id="user-menu-button" class="dropdown-toggle">
                            <span class="user-avatar">
                                {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                                    {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                {else}
                                    U
                                {/if}
                            </span>
                            <span class="hidden-sm hidden-xs">
                                {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname)}
                                    {$clientsdetails.firstname}
                                {else}
                                    User
                                {/if}
                            </span>
                            <b class="caret"></b>
                        </a>
                        
                        <!-- Advanced Mega Menu Dropdown -->
                        <div class="user-menu-dropdown" id="user-menu">
                            <!-- Header Section -->
                            <div class="user-menu-header">
                                <div class="user-info">
                                    <div class="user-avatar-large">
                                        {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                                            {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                        {else}
                                            U
                                        {/if}
                                    </div>
                                    <div class="user-details">
                                        <h4>
                                            {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                                                {$clientsdetails.firstname} {$clientsdetails.lastname}
                                            {else}
                                                User Account
                                            {/if}
                                        </h4>
                                        <p>
                                            {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.email)}
                                                {$clientsdetails.email}
                                            {else}
                                                Premium Member
                                            {/if}
                                        </p>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Menu Body -->
                            <div class="user-menu-body">
                                <!-- Dashboard Section -->
                                <div class="user-menu-section">
                                    <h6>Dashboard</h6>
                                    <a href="{$WEB_ROOT}/clientarea.php" class="user-menu-item">
                                        <i class="fas fa-home"></i>
                                        Overview
                                    </a>
                                    <a href="{$WEB_ROOT}/clientarea.php?action=products" class="user-menu-item">
                                        <i class="fas fa-server"></i>
                                        Services
                                    </a>
                                    <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="user-menu-item">
                                        <i class="fas fa-file-invoice"></i>
                                        Billing
                                    </a>
                                    <a href="{$WEB_ROOT}/supporttickets.php" class="user-menu-item">
                                        <i class="fas fa-question-circle"></i>
                                        Support
                                    </a>
                                </div>
                                
                                <!-- Account Management -->
                                <div class="user-menu-section">
                                    <h6>Account</h6>
                                    <a href="{$WEB_ROOT}/clientarea.php?action=details" class="user-menu-item">
                                        <i class="fas fa-user"></i>
                                        Profile
                                    </a>
                                    <a href="{$WEB_ROOT}/clientarea.php?action=security" class="user-menu-item">
                                        <i class="fas fa-lock"></i>
                                        Security
                                    </a>
                                    <a href="{$WEB_ROOT}/clientarea.php?action=contacts" class="user-menu-item">
                                        <i class="fas fa-address-book"></i>
                                        Contacts
                                    </a>
                                </div>
                                
                                <!-- Quick Actions -->
                                <div class="user-menu-section">
                                    <h6>Actions</h6>
                                    <a href="{$WEB_ROOT}/clientarea.php?action=addfunds" class="user-menu-item">
                                        <i class="fas fa-plus-circle"></i>
                                        Add Funds
                                    </a>
                                    <a href="{$WEB_ROOT}/submitticket.php" class="user-menu-item">
                                        <i class="fas fa-ticket-alt"></i>
                                        New Ticket
                                    </a>
                                    <a href="{$WEB_ROOT}/clientarea.php?action=emails" class="user-menu-item">
                                        <i class="fas fa-envelope"></i>
                                        Messages
                                    </a>
                                </div>
                                
                                <!-- Sign Out -->
                                <div class="user-menu-section">
                                    <a href="{$WEB_ROOT}/logout.php" class="user-menu-item" style="color: #E74C3C;">
                                        <i class="fas fa-sign-out-alt"></i>
                                        Sign Out
                                    </a>
                                </div>
                            </div>
                            
                            <!-- Notifications (if any) -->
                            {if count($clientAlerts) > 0}
                                <div class="user-menu-notifications">
                                    <h6>Notifications</h6>
                                    {foreach $clientAlerts as $alert}
                                        <a href="{$alert->getLink()}" class="user-menu-item notification-item">
                                            <i class="fas fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                            <div class="notification-message">{$alert->getMessage()}</div>
                                        </a>
                                    {/foreach}
                                </div>
                            {/if}
                        </div>
                    </li>
                {else}
                    <li>
                        <a href="{$WEB_ROOT}/clientarea.php" class="btn-outline">{$LANG.login}</a>
                    </li>
                    {if $condlinks.allowClientRegistration}
                        <li>
                            <a href="{$WEB_ROOT}/register.php" class="btn-primary">{$LANG.register}</a>
                        </li>
                    {/if}
                {/if}
                
                {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}
                
                {if $adminMasqueradingAsClient || $adminLoggedIn}
                    <li>
                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-warning" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                            <i class="fas fa-sign-out-alt"></i>
                        </a>
                    </li>
                {/if}
            </ul>
        </div><!-- /.navbar-collapse -->
    </div>
</nav>

<!-- Mobile menu -->
<div class="mobile-menu" id="mobile-menu">
    <div class="mobile-menu-content">
        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
        
        {if $loggedin}
            <!-- Mobile User Section -->
            <div class="mobile-user-section">
                <div class="mobile-user-info">
                    <div class="user-avatar">
                        {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                            {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                        {else}
                            U
                        {/if}
                    </div>
                    <div class="user-details">
                        <h5>
                            {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname)}
                                {$clientsdetails.firstname}
                            {else}
                                User
                            {/if}
                        </h5>
                        <p>
                            {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.email)}
                                {$clientsdetails.email}
                            {else}
                                Premium Member
                            {/if}
                        </p>
                    </div>
                </div>
                
                <!-- Mobile Dashboard Links -->
                <div class="mobile-menu-section">
                    <h6>Dashboard</h6>
                    <a href="{$WEB_ROOT}/clientarea.php" class="mobile-menu-item">Overview</a>
                    <a href="{$WEB_ROOT}/clientarea.php?action=products" class="mobile-menu-item">Services</a>
                    <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="mobile-menu-item">Billing</a>
                    <a href="{$WEB_ROOT}/supporttickets.php" class="mobile-menu-item">Support</a>
                </div>
                
                <!-- Mobile Account Links -->
                <div class="mobile-menu-section">
                    <h6>Account</h6>
                    <a href="{$WEB_ROOT}/clientarea.php?action=details" class="mobile-menu-item">Profile</a>
                    <a href="{$WEB_ROOT}/clientarea.php?action=security" class="mobile-menu-item">Security</a>
                    <a href="{$WEB_ROOT}/clientarea.php?action=contacts" class="mobile-menu-item">Contacts</a>
                </div>
                
                <!-- Sign Out -->
                <div class="mobile-menu-section">
                    <a href="{$WEB_ROOT}/logout.php" class="mobile-menu-item logout">Sign Out</a>
                </div>
            </div>
        {else}
            <div class="mobile-auth-section">
                <a href="{$WEB_ROOT}/clientarea.php" class="btn-outline">{$LANG.login}</a>
                {if $condlinks.allowClientRegistration}
                    <a href="{$WEB_ROOT}/register.php" class="btn-primary">{$LANG.register}</a>
                {/if}
            </div>
        {/if}
    </div>
</div>

{if $templatefile == 'homepage'}
    <section id="home-banner" class="hero-gradient">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2 class="font-orbitron glow-text">{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php" id="frmDomainHomepage">
                    <input type="hidden" name="transfer" />
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}" value="{$LANG.search}" id="btnDomainSearch" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" id="btnTransfer" class="btn btn-secondary{$captcha->getButtonClass($captchaForm)}" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2 class="font-orbitron glow-text">{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>
    <div class="home-shortcuts">
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs text-center">
                    <p class="lead" style="color: var(--text-light);">
                        {$LANG.howcanwehelp}
                    </p>
                </div>
                <div class="col-sm-12 col-md-8">
                    <ul>
                        {if $registerdomainenabled || $transferdomainenabled}
                            <li>
                                <a id="btnBuyADomain" href="domainchecker.php" class="card-dark">
                                    <i class="fas fa-globe animate-float"></i>
                                    <p>
                                        {$LANG.buyadomain} <span>&raquo;</span>
                                    </p>
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a id="btnOrderHosting" href="{$WEB_ROOT}/cart.php" class="card-dark">
                                <i class="far fa-hdd animate-float"></i>
                                <p>
                                    {$LANG.orderhosting} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnMakePayment" href="clientarea.php" class="card-dark">
                                <i class="fas fa-credit-card animate-float"></i>
                                <p>
                                    {$LANG.makepayment} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnGetSupport" href="submitticket.php" class="card-dark">
                                <i class="far fa-envelope animate-float"></i>
                                <p>
                                    {$LANG.getsupport} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
{/if}

{include file="$template/includes/validateuser.tpl"}
{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
