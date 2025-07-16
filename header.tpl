<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

    <!-- Inline Menu JavaScript Fallback -->
    <script>
    // Ensure menu functionality works even if external JS fails to load
    document.addEventListener('DOMContentLoaded', function() {
        // Wait a bit to ensure external scripts have a chance to load
        setTimeout(function() {
            initBasicMenuFunctionality();
        }, 100);
    });
    
    function initBasicMenuFunctionality() {
        // Only initialize if external theme.js hasn't already done it
        var mobileMenuButton = document.getElementById('mobile-menu-button');
        var mobileMenu = document.getElementById('mobile-menu');
        var userMenuButton = document.getElementById('user-menu-button');
        var userMenu = document.getElementById('user-menu');
        var userMenuArrow = document.getElementById('user-menu-arrow');
        
        // Check if menu functionality is already initialized
        if (mobileMenuButton && mobileMenuButton.hasAttribute('data-menu-initialized')) {
            return; // Already initialized by theme.js
        }
        
        // Mobile menu functionality
        if (mobileMenuButton && mobileMenu) {
            mobileMenuButton.setAttribute('data-menu-initialized', 'true');
            mobileMenuButton.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                mobileMenu.classList.toggle('hidden');
                // Close user menu if open
                if (userMenu) {
                    userMenu.classList.add('hidden');
                    if (userMenuArrow) {
                        userMenuArrow.style.transform = 'rotate(0deg)';
                    }
                }
            });
        }
        
        // User menu functionality
        if (userMenuButton && userMenu) {
            userMenuButton.setAttribute('data-menu-initialized', 'true');
            userMenuButton.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                userMenu.classList.toggle('hidden');
                
                // Rotate arrow icon
                if (userMenuArrow) {
                    if (userMenu.classList.contains('hidden')) {
                        userMenuArrow.style.transform = 'rotate(0deg)';
                    } else {
                        userMenuArrow.style.transform = 'rotate(180deg)';
                    }
                }
                
                // Close mobile menu if open
                if (mobileMenu) {
                    mobileMenu.classList.add('hidden');
                }
            });
        }
        
        // Close menus when clicking outside
        document.addEventListener('click', function(event) {
            if (mobileMenu && mobileMenuButton && 
                !mobileMenuButton.contains(event.target) && 
                !mobileMenu.contains(event.target)) {
                mobileMenu.classList.add('hidden');
            }
            
            if (userMenu && userMenuButton && 
                !userMenuButton.contains(event.target) && 
                !userMenu.contains(event.target)) {
                userMenu.classList.add('hidden');
                if (userMenuArrow) {
                    userMenuArrow.style.transform = 'rotate(0deg)';
                }
            }
        });
        
        // Close menus on escape key
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape') {
                if (mobileMenu) mobileMenu.classList.add('hidden');
                if (userMenu) {
                    userMenu.classList.add('hidden');
                    if (userMenuArrow) {
                        userMenuArrow.style.transform = 'rotate(0deg)';
                    }
                }
            }
        });
    }
    </script>
</head>

<body class="bg-dark-bg text-white" style="min-height: 100vh; background-color: #121212; color: #ffffff;">
    
    {if $captcha}{$captcha->getMarkup()}{/if}
    {$headeroutput}
    
    <!-- Navigation -->
    <nav style="background-color: #1a1a1a; border-bottom: 1px solid #374151; position: fixed; width: 100%; z-index: 50; top: 0;">
        <div style="max-width: 80rem; margin: 0 auto; padding: 0 1rem;">
            <div style="display: flex; justify-content: space-between; align-items: center; height: 4rem;">
                <!-- Logo -->
                <div style="display: flex; align-items: center;">
                    <a href="{$WEB_ROOT}/index.php" style="display: flex; align-items: center; text-decoration: none;">
                        {if $assetLogoPath}
                            <img src="{$assetLogoPath}" alt="{$companyname}" style="height: 2rem; width: auto; margin-right: 0.75rem;">
                        {else}
                            <div style="width: 2rem; height: 2rem; background: linear-gradient(135deg, #00ff88, #007bff); border-radius: 0.25rem; margin-right: 0.75rem;"></div>
                        {/if}
                        <span class="font-orbitron glow-text" style="font-family: Orbitron, monospace; font-weight: 700; font-size: 1.25rem;">{$companyname}</span>
                    </a>
                </div>
                
                <!-- Desktop Navigation -->
                <div style="display: none; align-items: baseline;" class="hidden md:flex">
                    <div style="margin-left: 2.5rem; display: flex; align-items: baseline; gap: 1rem;">
                        <a href="{$WEB_ROOT}/index.php" class="nav-link {if $filename eq 'index'}active{/if}" style="color: {if $filename eq 'index'}#00ff88{else}#bfbfbf{/if}; text-decoration: none; padding: 0.5rem 0.75rem; border-radius: 0.375rem; transition: all 0.3s ease;">Home</a>
                        <a href="{$WEB_ROOT}/cart.php" class="nav-link" style="color: #bfbfbf; text-decoration: none; padding: 0.5rem 0.75rem; border-radius: 0.375rem; transition: all 0.3s ease;">Hosting</a>
                        <a href="{$WEB_ROOT}/domainchecker.php" class="nav-link" style="color: #bfbfbf; text-decoration: none; padding: 0.5rem 0.75rem; border-radius: 0.375rem; transition: all 0.3s ease;">Domains</a>
                        <a href="{$WEB_ROOT}/knowledgebase.php" class="nav-link" style="color: #bfbfbf; text-decoration: none; padding: 0.5rem 0.75rem; border-radius: 0.375rem; transition: all 0.3s ease;">Support</a>
                        <a href="{$WEB_ROOT}/contact.php" class="nav-link" style="color: #bfbfbf; text-decoration: none; padding: 0.5rem 0.75rem; border-radius: 0.375rem; transition: all 0.3s ease;">Contact</a>
                    </div>
                </div>
                
                <!-- User Menu -->
                <div style="display: none;" class="hidden md:block">
                    <div style="margin-left: 1rem; display: flex; align-items: center;">
                        {if $loggedin}
                            <div style="position: relative;">
                                <button type="button" style="display: flex; align-items: center; background: none; border: none; color: #bfbfbf; font-size: 0.875rem; border-radius: 9999px; transition: all 0.3s ease; cursor: pointer;" id="user-menu-button">
                                    <span style="position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0, 0, 0, 0); white-space: nowrap; border: 0;">Open user menu</span>
                                    <div style="width: 2.5rem; height: 2.5rem; background: linear-gradient(135deg, #00ff88, #007bff); border-radius: 9999px; display: flex; align-items: center; justify-content: center; box-shadow: 0 0 20px rgba(0, 255, 136, 0.5);">
                                        <span style="color: #121212; font-weight: 700; font-size: 0.875rem;">
                                            {if $clientsdetails.firstname && $clientsdetails.lastname}
                                                {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                            {else}
                                                U
                                            {/if}
                                        </span>
                                    </div>
                                    <div style="margin-left: 0.75rem; display: none;" class="hidden lg:block">
                                        <div style="display: flex; flex-direction: column; text-align: left;">
                                            <span style="color: white; font-weight: 500; line-height: 1.25;">
                                                {if $clientsdetails.firstname}
                                                    {$clientsdetails.firstname}
                                                {else}
                                                    User
                                                {/if}
                                            </span>
                                            <span style="color: #bfbfbf; font-size: 0.75rem; line-height: 1.25;">Account Menu</span>
                                        </div>
                                    </div>
                                    <svg style="margin-left: 0.5rem; width: 1rem; height: 1rem; color: #bfbfbf; transition: transform 0.3s ease;" id="user-menu-arrow" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/>
                                    </svg>
                                </button>
                                
                                <!-- Advanced Mega Menu Dropdown -->
                                <div style="position: absolute; right: 0; margin-top: 0.75rem; width: 24rem; border-radius: 0.75rem; box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 8px 10px -6px rgba(0, 0, 0, 0.1); background-color: #2a2a2a; border: 1px solid #374151; overflow: hidden;" class="hidden" id="user-menu">
                                    <!-- Header Section -->
                                    <div style="background: linear-gradient(to right, rgba(0, 255, 136, 0.1), rgba(0, 123, 255, 0.1)); padding: 1.5rem; border-bottom: 1px solid #374151;">
                                        <div style="display: flex; align-items: center;">
                                            <div style="width: 3rem; height: 3rem; background: linear-gradient(135deg, #00ff88, #007bff); border-radius: 9999px; display: flex; align-items: center; justify-content: center;">
                                                <span style="color: #121212; font-weight: 700;">
                                                    {if $clientsdetails.firstname && $clientsdetails.lastname}
                                                        {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                                    {else}
                                                        U
                                                    {/if}
                                                </span>
                                            </div>
                                            <div style="margin-left: 1rem;">
                                                <h3 style="color: white; font-weight: 600; margin: 0;">
                                                    {if $clientsdetails.firstname && $clientsdetails.lastname}
                                                        {$clientsdetails.firstname} {$clientsdetails.lastname}
                                                    {else}
                                                        User Account
                                                    {/if}
                                                </h3>
                                                <p style="color: #bfbfbf; font-size: 0.875rem; margin: 0;">
                                                    {if $clientsdetails.email}
                                                        {$clientsdetails.email}
                                                    {else}
                                                        Premium Member
                                                    {/if}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Menu Grid -->
                                    <div style="display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 0.25rem; padding: 0.5rem;">
                                        <!-- Dashboard Section -->
                                        <div style="grid-column: span 2; padding: 0.75rem;">
                                            <h4 style="color: #00ff88; font-weight: 500; font-size: 0.875rem; margin-bottom: 0.5rem; text-transform: uppercase; letter-spacing: 0.05em;">Dashboard</h4>
                                            <div style="display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 0.5rem;">
                                                <a href="{$WEB_ROOT}/clientarea.php" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #007bff;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"/>
                                                    </svg>
                                                    Overview
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=products" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #9b59b6;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M3 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"/>
                                                    </svg>
                                                    Services
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=invoices" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #ffc107;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M4 4a2 2 0 00-2 2v1h16V6a2 2 0 00-2-2H4zM18 9H2v5a2 2 0 002 2h12a2 2 0 002-2V9zM4 13a1 1 0 011-1h1a1 1 0 110 2H5a1 1 0 01-1-1zm5-1a1 1 0 100 2h1a1 1 0 100-2H9z"/>
                                                    </svg>
                                                    Billing
                                                </a>
                                                <a href="{$WEB_ROOT}/supporttickets.php" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #ff6b35;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"/>
                                                    </svg>
                                                    Support
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <!-- Account Management -->
                                        <div style="padding: 0.75rem; border-top: 1px solid #374151;">
                                            <h4 style="color: #007bff; font-weight: 500; font-size: 0.875rem; margin-bottom: 0.5rem; text-transform: uppercase; letter-spacing: 0.05em;">Account</h4>
                                            <div style="display: flex; flex-direction: column; gap: 0.25rem;">
                                                <a href="{$WEB_ROOT}/clientarea.php?action=details" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #bfbfbf;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"/>
                                                    </svg>
                                                    Profile
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=security" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #bfbfbf;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd"/>
                                                    </svg>
                                                    Security
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=contacts" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #bfbfbf;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                                                    </svg>
                                                    Contacts
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <!-- Quick Actions -->
                                        <div style="padding: 0.75rem; border-top: 1px solid #374151;">
                                            <h4 style="color: #9b59b6; font-weight: 500; font-size: 0.875rem; margin-bottom: 0.5rem; text-transform: uppercase; letter-spacing: 0.05em;">Actions</h4>
                                            <div style="display: flex; flex-direction: column; gap: 0.25rem;">
                                                <a href="{$WEB_ROOT}/clientarea.php?action=addfunds" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #bfbfbf;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zm2 6a2 2 0 012-2h8a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2v-4zm6 4a2 2 0 100-4 2 2 0 000 4z"/>
                                                    </svg>
                                                    Add Funds
                                                </a>
                                                <a href="{$WEB_ROOT}/submitticket.php" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #bfbfbf;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.293l-3-3a1 1 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L9 9.414V13a1 1 0 102 0V9.414l1.293 1.293a1 1 0 001.414-1.414z" clip-rule="evenodd"/>
                                                    </svg>
                                                    New Ticket
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=emails" style="display: flex; align-items: center; padding: 0.75rem; font-size: 0.875rem; color: #bfbfbf; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                                    <svg style="width: 1rem; height: 1rem; margin-right: 0.75rem; color: #bfbfbf;" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"/>
                                                        <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"/>
                                                    </svg>
                                                    Messages
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Footer Section -->
                                    <div style="border-top: 1px solid #374151; padding: 1.5rem; background-color: rgba(18, 18, 18, 0.5);">
                                        <a href="{$WEB_ROOT}/logout.php" style="display: flex; align-items: center; justify-content: center; width: 100%; padding: 0.5rem 1rem; font-size: 0.875rem; color: #ef4444; background-color: transparent; border-radius: 0.5rem; text-decoration: none; transition: all 0.2s ease;">
                                            <svg style="width: 1rem; height: 1rem; margin-right: 0.5rem;" fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd"/>
                                            </svg>
                                            Sign Out
                                        </a>
                                    </div>
                                </div>
                            </div>
                        {else}
                            <div style="display: flex; gap: 1rem;">
                                <a href="{$WEB_ROOT}/clientarea.php" style="color: #bfbfbf; padding: 0.5rem 0.75rem; border-radius: 0.375rem; font-size: 0.875rem; font-weight: 500; text-decoration: none; transition: color 0.3s ease;">Login</a>
                                <a href="{$WEB_ROOT}/register.php" class="btn-primary" style="background-color: #00ff88; color: #121212; padding: 0.5rem 0.75rem; border-radius: 0.375rem; font-size: 0.875rem; font-weight: 500; text-decoration: none; transition: all 0.3s ease;">Get Started</a>
                            </div>
                        {/if}
                    </div>
                </div>
                
                <!-- Mobile menu button -->
                <div style="display: block;" class="md:hidden">
                    <button type="button" style="background-color: #2a2a2a; display: inline-flex; align-items: center; justify-content: center; padding: 0.5rem; border-radius: 0.375rem; color: #bfbfbf; border: none; cursor: pointer; transition: all 0.3s ease;" id="mobile-menu-button">
                        <span style="position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0, 0, 0, 0); white-space: nowrap; border: 0;">Open main menu</span>
                        <svg style="display: block; height: 1.5rem; width: 1.5rem;" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Mobile menu -->
        <div style="display: none;" class="md:hidden hidden" id="mobile-menu">
            <div style="padding: 0.5rem; background-color: #2a2a2a; display: flex; flex-direction: column; gap: 0.25rem;">
                <a href="{$WEB_ROOT}/index.php" class="nav-link-mobile {if $filename eq 'index'}active{/if}" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: {if $filename eq 'index'}#00ff88{else}#bfbfbf{/if}; text-decoration: none; transition: all 0.3s ease;">Home</a>
                <a href="{$WEB_ROOT}/cart.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Hosting</a>
                <a href="{$WEB_ROOT}/domainchecker.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Domains</a>
                <a href="{$WEB_ROOT}/knowledgebase.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Support</a>
                <a href="{$WEB_ROOT}/contact.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Contact</a>
                {if $loggedin}
                    <div style="padding-top: 1rem; padding-bottom: 0.75rem; border-top: 1px solid #374151;">
                        <!-- User Profile Section -->
                        <div style="padding: 0 0.75rem 0.75rem;">
                            <div style="display: flex; align-items: center;">
                                <div style="width: 2.5rem; height: 2.5rem; background: linear-gradient(135deg, #00ff88, #007bff); border-radius: 9999px; display: flex; align-items: center; justify-content: center; margin-right: 0.75rem;">
                                    <span style="color: #121212; font-weight: 700; font-size: 0.875rem;">
                                        {if $clientsdetails.firstname && $clientsdetails.lastname}
                                            {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                        {else}
                                            U
                                        {/if}
                                    </span>
                                </div>
                                <div>
                                    <div style="font-size: 1rem; font-weight: 500; color: white;">
                                        {if $clientsdetails.firstname}
                                            {$clientsdetails.firstname}
                                        {else}
                                            User
                                        {/if}
                                    </div>
                                    <div style="color: #bfbfbf; font-size: 0.875rem;">
                                        {if $clientsdetails.email}
                                            {$clientsdetails.email}
                                        {else}
                                            Premium Member
                                        {/if}
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Dashboard Section -->
                        <div style="padding: 0 0.75rem 0.5rem;">
                            <div style="color: #00ff88; font-weight: 500; font-size: 0.75rem; margin-bottom: 0.5rem; text-transform: uppercase; letter-spacing: 0.05em;">Dashboard</div>
                            <a href="{$WEB_ROOT}/clientarea.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Overview</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=products" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Services</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Billing</a>
                            <a href="{$WEB_ROOT}/supporttickets.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Support</a>
                        </div>
                        
                        <!-- Account Management -->
                        <div style="padding: 0 0.75rem 0.5rem; border-top: 1px solid #374151; padding-top: 0.5rem;">
                            <div style="color: #007bff; font-weight: 500; font-size: 0.75rem; margin-bottom: 0.5rem; text-transform: uppercase; letter-spacing: 0.05em;">Account</div>
                            <a href="{$WEB_ROOT}/clientarea.php?action=details" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Profile</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=security" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Security</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=contacts" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Contacts</a>
                        </div>
                        
                        <!-- Quick Actions -->
                        <div style="padding: 0 0.75rem 0.5rem; border-top: 1px solid #374151; padding-top: 0.5rem;">
                            <div style="color: #9b59b6; font-weight: 500; font-size: 0.75rem; margin-bottom: 0.5rem; text-transform: uppercase; letter-spacing: 0.05em;">Actions</div>
                            <a href="{$WEB_ROOT}/clientarea.php?action=addfunds" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Add Funds</a>
                            <a href="{$WEB_ROOT}/submitticket.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">New Ticket</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=emails" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Messages</a>
                        </div>
                        
                        <!-- Logout -->
                        <div style="padding: 0 0.75rem; padding-top: 0.5rem; border-top: 1px solid #374151;">
                            <a href="{$WEB_ROOT}/logout.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #ef4444; text-decoration: none; transition: all 0.3s ease;">Sign Out</a>
                        </div>
                    </div>
                {else}
                    <div style="padding-top: 1rem; padding-bottom: 0.75rem; border-top: 1px solid #374151;">
                        <a href="{$WEB_ROOT}/clientarea.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Login</a>
                        <a href="{$WEB_ROOT}/register.php" class="nav-link-mobile" style="display: block; border-radius: 0.375rem; padding: 0.5rem 0.75rem; font-size: 1rem; font-weight: 500; color: #bfbfbf; text-decoration: none; transition: all 0.3s ease;">Register</a>
                    </div>
                {/if}
            </div>
        </div>
    </nav>
    
    <!-- Dashboard Navigation Breadcrumb (for client area pages) -->
    {if $loggedin && $filename neq 'clientareahome' && $filename neq 'index'}
        <div style="background-color: #2a2a2a; border-bottom: 1px solid #374151; padding-top: 4rem;">
            <div style="max-width: 80rem; margin: 0 auto; padding: 0.75rem 1rem;">
                <nav style="display: flex;" aria-label="Breadcrumb">
                    <ol style="display: flex; align-items: center; gap: 1rem; list-style: none; margin: 0; padding: 0;">
                        <li>
                            <div>
                                <a href="{$WEB_ROOT}/clientarea.php" style="color: #bfbfbf; text-decoration: none; transition: color 0.3s ease;">
                                    <svg style="width: 1.25rem; height: 1.25rem; margin-right: 0.5rem; display: inline;" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"/>
                                    </svg>
                                    Dashboard
                                </a>
                            </div>
                        </li>
                        {if $pagetitle neq 'Client Area'}
                            <li>
                                <div style="display: flex; align-items: center;">
                                    <svg style="flex-shrink: 0; height: 1.25rem; width: 1.25rem; color: #6b7280;" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"/>
                                    </svg>
                                    <span style="margin-left: 1rem; font-size: 0.875rem; font-weight: 500; color: white;">{$pagetitle}</span>
                                </div>
                            </li>
                        {/if}
                    </ol>
                </nav>
            </div>
        </div>
    {/if}
    
    <!-- Main Content -->
    <main style="padding-top: {if $loggedin && $filename neq 'clientareahome' && $filename neq 'index'}0{else}4rem{/if};">

<style>
/* Navigation Link Hover Effects */
.nav-link:hover {
    color: white;
    box-shadow: 0 0 20px rgba(0, 255, 136, 0.5);
}

.nav-link-mobile:hover {
    background-color: #374151;
    color: white;
}

/* User Menu Link Hover Effects */
#user-menu a:hover {
    background-color: #121212;
    color: white;
}

#user-menu svg {
    transition: color 0.3s ease;
}

#user-menu a:hover svg {
    color: #00ff88;
}

/* Mobile Menu Button Hover */
#mobile-menu-button:hover {
    background-color: #374151;
    color: white;
}

/* User Menu Button Hover */
#user-menu-button:hover {
    color: white;
}

/* Responsive Helper Classes */
@media (min-width: 768px) {
    .md\\:flex { display: flex !important; }
    .md\\:hidden { display: none !important; }
}

@media (max-width: 767px) {
    .md\\:flex { display: none !important; }
    .md\\:hidden { display: block !important; }
}

.hidden { display: none; }
</style>
                            <li>
                                <a href="{$alert->getLink()}">
                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                    <div class="message">{$alert->getMessage()}</div>
                                </a>
                            </li>
                        {foreachelse}
                            <li class="none">
                                {$LANG.notificationsnone}
                            </li>
                        {/foreach}
                        </ul>
                    </div>
                </li>
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/logout.php" class="btn">
                        {$LANG.clientareanavlogout}
                    </a>
                </li>
            {else}
                <li>
                    <a href="{$WEB_ROOT}/clientarea.php">{$LANG.login}</a>
                </li>
                {if $condlinks.allowClientRegistration}
                    <li>
                        <a href="{$WEB_ROOT}/register.php">{$LANG.register}</a>
                    </li>
                {/if}
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/cart.php?a=view" class="btn">
                        {$LANG.viewcart}
                    </a>
                </li>
            {/if}
            {if $adminMasqueradingAsClient || $adminLoggedIn}
                <li>
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                </li>
            {/if}
        </ul>

        {if $assetLogoPath}
            <a href="{$WEB_ROOT}/index.php" class="logo"><img src="{$assetLogoPath}" alt="{$companyname}"></a>
        {else}
            <a href="{$WEB_ROOT}/index.php" class="logo logo-text">{$companyname}</a>
        {/if}

    </div>
</section>

<section id="main-menu">

    <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-nav">
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

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                </ul>

            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

</section>

{if $templatefile == 'homepage'}
    <section id="home-banner">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2>{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php" id="frmDomainHomepage">
                    <input type="hidden" name="transfer" />
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn search{$captcha->getButtonClass($captchaForm)}" value="{$LANG.search}" id="btnDomainSearch" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" id="btnTransfer" class="btn transfer{$captcha->getButtonClass($captchaForm)}" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>
    <div class="home-shortcuts">
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs text-center">
                    <p class="lead">
                        {$LANG.howcanwehelp}
                    </p>
                </div>
                <div class="col-sm-12 col-md-8">
                    <ul>
                        {if $registerdomainenabled || $transferdomainenabled}
                            <li>
                                <a id="btnBuyADomain" href="domainchecker.php">
                                    <i class="fas fa-globe"></i>
                                    <p>
                                        {$LANG.buyadomain} <span>&raquo;</span>
                                    </p>
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a id="btnOrderHosting" href="{$WEB_ROOT}/cart.php">
                                <i class="far fa-hdd"></i>
                                <p>
                                    {$LANG.orderhosting} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnMakePayment" href="clientarea.php">
                                <i class="fas fa-credit-card"></i>
                                <p>
                                    {$LANG.makepayment} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnGetSupport" href="submitticket.php">
                                <i class="far fa-envelope"></i>
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
