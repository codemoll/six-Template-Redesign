<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}">
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
    
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/style.css" />
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="{$WEB_ROOT}/templates/{$template}/images/favicon.ico" type="image/x-icon" />
    
    <!-- Meta Tags -->
    <meta name="description" content="{$companyname} - Fast, reliable, and secure hosting solutions with cutting-edge technology and 24/7 support.">
    <meta name="keywords" content="web hosting, cloud hosting, dedicated servers, VPS, domain registration, SSL certificates">
    <meta name="author" content="{$companyname}">
    
    <!-- Open Graph -->
    <meta property="og:title" content="{$pagetitle} - {$companyname}">
    <meta property="og:description" content="Fast, reliable, and secure hosting solutions">
    <meta property="og:type" content="website">
    <meta property="og:url" content="{$systemurl}">
    
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

<body class="bg-dark-bg text-text-white min-h-screen">
    
    <!-- Navigation -->
    <nav class="bg-dark-bg-alt border-b border-gray-800 fixed w-full z-50 top-0">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
                <!-- Logo -->
                <div class="flex items-center">
                    <a href="{$WEB_ROOT}/index.php" class="flex items-center space-x-3">
                        {if isset($templatefile) && is_array($templatefile) && $templatefile.logourl}
                            <img src="{$templatefile.logourl}" alt="{$companyname}" class="h-8 w-auto">
                        {else}
                            {* Check for logo.png in images folder *}
                            <img src="{$WEB_ROOT}/templates/{$template}/images/logo.png" alt="{$companyname}" class="h-8 w-auto" 
                                 onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                            <div class="w-8 h-8 bg-gradient-to-br from-neon-green to-electric-blue rounded" style="display:none;"></div>
                        {/if}
                        <span class="font-orbitron font-bold text-xl glow-text">{$companyname}</span>
                    </a>
                </div>
                
                <!-- Desktop Navigation -->
                <div class="hidden md:block">
                    <div class="ml-10 flex items-baseline space-x-4">
                        <a href="{$WEB_ROOT}/index.php" class="nav-link {if $filename eq 'index'}active{/if}">Home</a>
                        <a href="{$WEB_ROOT}/cart.php" class="nav-link">Hosting</a>
                        <a href="{$WEB_ROOT}/domainchecker.php" class="nav-link">Domains</a>
                        <a href="{$WEB_ROOT}/knowledgebase.php" class="nav-link">Support</a>
                        <a href="{$WEB_ROOT}/contact.php" class="nav-link">Contact</a>
                    </div>
                </div>
                
                <!-- User Menu -->
                <div class="hidden md:block">
                    <div class="ml-4 flex items-center md:ml-6">
                        {if $loggedin}
                            <div class="relative">
                                <button type="button" class="flex items-center text-sm rounded-full text-text-light hover:text-white focus:outline-none focus:ring-2 focus:ring-neon-green transition-all duration-300" id="user-menu-button">
                                    <span class="sr-only">Open user menu</span>
                                    <div class="w-10 h-10 bg-gradient-to-br from-neon-green to-electric-blue rounded-full flex items-center justify-center shadow-glow-green">
                                        <span class="text-dark-bg font-bold text-sm">
                                            {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                                                {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                            {else}
                                                U
                                            {/if}
                                        </span>
                                    </div>
                                    <div class="ml-3 hidden lg:block">
                                        <div class="flex flex-col text-left">
                                            <span class="text-white font-medium leading-tight">
                                                {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname)}
                                                    {$clientsdetails.firstname}
                                                {else}
                                                    User
                                                {/if}
                                            </span>
                                            <span class="text-text-light text-xs leading-tight">Account Menu</span>
                                        </div>
                                    </div>
                                    <svg class="ml-2 w-4 h-4 text-text-light transition-transform duration-300" id="user-menu-arrow" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/>
                                    </svg>
                                </button>
                                
                                <!-- Advanced Mega Menu Dropdown -->
                                <div class="origin-top-right absolute right-0 mt-3 w-96 rounded-xl shadow-xl bg-dark-surface ring-1 ring-gray-700 border border-gray-600 hidden overflow-hidden" id="user-menu">
                                    <!-- Header Section -->
                                    <div class="bg-gradient-to-r from-neon-green/10 to-electric-blue/10 px-6 py-4 border-b border-gray-700">
                                        <div class="flex items-center">
                                            <div class="w-12 h-12 bg-gradient-to-br from-neon-green to-electric-blue rounded-full flex items-center justify-center">
                                                <span class="text-dark-bg font-bold">
                                                    {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                                                        {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                                    {else}
                                                        U
                                                    {/if}
                                                </span>
                                            </div>
                                            <div class="ml-4">
                                                <h3 class="text-white font-semibold">
                                                    {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                                                        {$clientsdetails.firstname} {$clientsdetails.lastname}
                                                    {else}
                                                        User Account
                                                    {/if}
                                                </h3>
                                                <p class="text-text-light text-sm">
                                                    {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.email)}
                                                        {$clientsdetails.email}
                                                    {else}
                                                        Premium Member
                                                    {/if}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Menu Grid -->
                                    <div class="grid grid-cols-2 gap-1 p-2">
                                        <!-- Dashboard Section -->
                                        <div class="col-span-2 p-3">
                                            <h4 class="text-neon-green font-medium text-sm mb-2 uppercase tracking-wider">Dashboard</h4>
                                            <div class="grid grid-cols-2 gap-2">
                                                <a href="{$WEB_ROOT}/clientarea.php" class="group flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-electric-blue group-hover:text-neon-green transition-colors" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"/>
                                                    </svg>
                                                    Overview
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=products" class="group flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-cyber-purple group-hover:text-neon-green transition-colors" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M3 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 4a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"/>
                                                    </svg>
                                                    Services
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="group flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-yellow-400 group-hover:text-neon-green transition-colors" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M4 4a2 2 0 00-2 2v1h16V6a2 2 0 00-2-2H4zM18 9H2v5a2 2 0 002 2h12a2 2 0 002-2V9zM4 13a1 1 0 011-1h1a1 1 0 110 2H5a1 1 0 01-1-1zm5-1a1 1 0 100 2h1a1 1 0 100-2H9z"/>
                                                    </svg>
                                                    Billing
                                                </a>
                                                <a href="{$WEB_ROOT}/supporttickets.php" class="group flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-orange-400 group-hover:text-neon-green transition-colors" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"/>
                                                    </svg>
                                                    Support
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <!-- Account Management -->
                                        <div class="p-3 border-t border-gray-700">
                                            <h4 class="text-electric-blue font-medium text-sm mb-2 uppercase tracking-wider">Account</h4>
                                            <div class="space-y-1">
                                                <a href="{$WEB_ROOT}/clientarea.php?action=details" class="flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-text-light" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"/>
                                                    </svg>
                                                    Profile
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=security" class="flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-text-light" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd"/>
                                                    </svg>
                                                    Security
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=contacts" class="flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-text-light" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/>
                                                    </svg>
                                                    Contacts
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <!-- Quick Actions -->
                                        <div class="p-3 border-t border-gray-700">
                                            <h4 class="text-cyber-purple font-medium text-sm mb-2 uppercase tracking-wider">Actions</h4>
                                            <div class="space-y-1">
                                                <a href="{$WEB_ROOT}/clientarea.php?action=addfunds" class="flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-text-light" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zm2 6a2 2 0 012-2h8a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2v-4zm6 4a2 2 0 100-4 2 2 0 000 4z"/>
                                                    </svg>
                                                    Add Funds
                                                </a>
                                                <a href="{$WEB_ROOT}/submitticket.php" class="flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-text-light" fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.293l-3-3a1 1 0 00-1.414 0l-3 3a1 1 0 001.414 1.414L9 9.414V13a1 1 0 102 0V9.414l1.293 1.293a1 1 0 001.414-1.414z" clip-rule="evenodd"/>
                                                    </svg>
                                                    New Ticket
                                                </a>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=emails" class="flex items-center px-3 py-2 text-sm text-text-light hover:bg-dark-bg hover:text-white rounded-lg transition-all duration-200">
                                                    <svg class="w-4 h-4 mr-3 text-text-light" fill="currentColor" viewBox="0 0 20 20">
                                                        <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"/>
                                                        <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"/>
                                                    </svg>
                                                    Messages
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Footer Section -->
                                    <div class="border-t border-gray-700 px-6 py-3 bg-dark-bg/50">
                                        <a href="{$WEB_ROOT}/logout.php" class="flex items-center justify-center w-full px-4 py-2 text-sm text-red-400 hover:text-red-300 hover:bg-red-900/20 rounded-lg transition-all duration-200">
                                            <svg class="w-4 h-4 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                                <path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd"/>
                                            </svg>
                                            Sign Out
                                        </a>
                                    </div>
                                </div>
                            </div>
                        {else}
                            <div class="flex space-x-4">
                                <a href="{$WEB_ROOT}/clientarea.php" class="text-text-light hover:text-white px-3 py-2 rounded-md text-sm font-medium transition-colors duration-300">Login</a>
                                <a href="{$WEB_ROOT}/register.php" class="btn-primary text-sm">Get Started</a>
                            </div>
                        {/if}
                    </div>
                </div>
                
                <!-- Mobile menu button -->
                <div class="md:hidden">
                    <button type="button" class="bg-dark-surface inline-flex items-center justify-center p-2 rounded-md text-text-light hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-neon-green" id="mobile-menu-button">
                        <span class="sr-only">Open main menu</span>
                        <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Mobile menu -->
        <div class="md:hidden hidden" id="mobile-menu">
            <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3 bg-dark-surface">
                <a href="{$WEB_ROOT}/index.php" class="nav-link-mobile {if $filename eq 'index'}active{/if}">Home</a>
                <a href="{$WEB_ROOT}/cart.php" class="nav-link-mobile">Hosting</a>
                <a href="{$WEB_ROOT}/domainchecker.php" class="nav-link-mobile">Domains</a>
                <a href="{$WEB_ROOT}/knowledgebase.php" class="nav-link-mobile">Support</a>
                <a href="{$WEB_ROOT}/contact.php" class="nav-link-mobile">Contact</a>
                {if $loggedin}
                    <div class="pt-4 pb-3 border-t border-gray-700">
                        <!-- User Profile Section -->
                        <div class="px-3 pb-3">
                            <div class="flex items-center">
                                <div class="w-10 h-10 bg-gradient-to-br from-neon-green to-electric-blue rounded-full flex items-center justify-center mr-3">
                                    <span class="text-dark-bg font-bold text-sm">
                                        {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname) && isset($clientsdetails.lastname)}
                                            {$clientsdetails.firstname|substr:0:1}{$clientsdetails.lastname|substr:0:1}
                                        {else}
                                            U
                                        {/if}
                                    </span>
                                </div>
                                <div>
                                    <div class="text-base font-medium text-white">
                                        {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.firstname)}
                                            {$clientsdetails.firstname}
                                        {else}
                                            User
                                        {/if}
                                    </div>
                                    <div class="text-text-light text-sm">
                                        {if isset($clientsdetails) && is_array($clientsdetails) && isset($clientsdetails.email)}
                                            {$clientsdetails.email}
                                        {else}
                                            Premium Member
                                        {/if}
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Dashboard Section -->
                        <div class="px-3 pb-2">
                            <div class="text-neon-green font-medium text-xs uppercase tracking-wider mb-2">Dashboard</div>
                            <a href="{$WEB_ROOT}/clientarea.php" class="nav-link-mobile">Overview</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=products" class="nav-link-mobile">Services</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="nav-link-mobile">Billing</a>
                            <a href="{$WEB_ROOT}/supporttickets.php" class="nav-link-mobile">Support</a>
                        </div>
                        
                        <!-- Account Management -->
                        <div class="px-3 pb-2 border-t border-gray-700 pt-2">
                            <div class="text-electric-blue font-medium text-xs uppercase tracking-wider mb-2">Account</div>
                            <a href="{$WEB_ROOT}/clientarea.php?action=details" class="nav-link-mobile">Profile</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=security" class="nav-link-mobile">Security</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=contacts" class="nav-link-mobile">Contacts</a>
                        </div>
                        
                        <!-- Quick Actions -->
                        <div class="px-3 pb-2 border-t border-gray-700 pt-2">
                            <div class="text-cyber-purple font-medium text-xs uppercase tracking-wider mb-2">Actions</div>
                            <a href="{$WEB_ROOT}/clientarea.php?action=addfunds" class="nav-link-mobile">Add Funds</a>
                            <a href="{$WEB_ROOT}/submitticket.php" class="nav-link-mobile">New Ticket</a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=emails" class="nav-link-mobile">Messages</a>
                        </div>
                        
                        <!-- Logout -->
                        <div class="px-3 pt-2 border-t border-gray-700">
                            <a href="{$WEB_ROOT}/logout.php" class="nav-link-mobile text-red-400">Sign Out</a>
                        </div>
                    </div>
                {else}
                    <div class="pt-4 pb-3 border-t border-gray-700">
                        <a href="{$WEB_ROOT}/clientarea.php" class="nav-link-mobile">Login</a>
                        <a href="{$WEB_ROOT}/register.php" class="nav-link-mobile">Register</a>
                    </div>
                {/if}
            </div>
        </div>
    </nav>
    
    <!-- Dashboard Navigation Breadcrumb (for client area pages) -->
    {if $loggedin && $filename neq 'clientareahome'}
        <div class="bg-dark-surface border-b border-gray-800 pt-16">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-3">
                <nav class="flex" aria-label="Breadcrumb">
                    <ol class="flex items-center space-x-4">
                        <li>
                            <div>
                                <a href="{$WEB_ROOT}/clientarea.php" class="text-text-light hover:text-neon-green transition-colors duration-300">
                                    <svg class="w-5 h-5 mr-2 inline" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"/>
                                    </svg>
                                    Dashboard
                                </a>
                            </div>
                        </li>
                        {if $pagetitle neq 'Client Area'}
                            <li>
                                <div class="flex items-center">
                                    <svg class="flex-shrink-0 h-5 w-5 text-gray-400" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"/>
                                    </svg>
                                    <span class="ml-4 text-sm font-medium text-white">{$pagetitle}</span>
                                </div>
                            </li>
                        {/if}
                    </ol>
                </nav>
            </div>
        </div>
    {/if}
    
    <!-- Main Content -->
    <main class="{if $loggedin && $filename neq 'clientareahome'}pt-0{else}pt-16{/if}">

        
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
