{* DoubleSpeed Host Navigation Bar - Enhanced Modern Design *}
<nav class="navbar navbar-default navbar-fixed-top navbar-enhanced" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#ds-navbar-collapse" aria-expanded="false" aria-controls="ds-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand enhanced-brand" href="{$WEB_ROOT}/">
                {if $logoUrl}
                    <img src="{$logoUrl}" alt="{$companyname}" class="navbar-logo">
                {else}
                    <div class="brand-container">
                        <div class="brand-logo">
                            <img src="{$WEB_ROOT}/templates/{$template}/images/logo.svg" alt="{$companyname}" class="navbar-logo">
                        </div>
                        <div class="brand-text">
                            <span class="brand-primary">DoubleSpeed</span><span class="brand-secondary">Host</span>
                        </div>
                    </div>
                {/if}
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="ds-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="nav-item"><a href="{$WEB_ROOT}/" class="nav-link">Home</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Hosting <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="{$WEB_ROOT}/store/shared-hosting" class="dropdown-item">Shared Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/store/vps-hosting" class="dropdown-item">VPS Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/store/dedicated-servers" class="dropdown-item">Dedicated Servers</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Domains <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="{$WEB_ROOT}/store/domain-register" class="dropdown-item">Register Domain</a></li>
                        <li><a href="{$WEB_ROOT}/store/domain-transfer" class="dropdown-item">Transfer Domain</a></li>
                        <li><a href="{$WEB_ROOT}/domain-pricing" class="dropdown-item">Domain Pricing</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a href="{$WEB_ROOT}/supporttickets.php" class="nav-link">Support</a></li>
                <li class="nav-item"><a href="{$WEB_ROOT}/contact.php" class="nav-link">Contact</a></li>
            </ul>
            
            <!-- Right side navbar items -->
            <ul class="nav navbar-nav navbar-right">
                {if $loggedin}
                    <!-- Notifications Badge -->
                    <li class="dropdown notifications-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-bell notification-icon"></i>
                            <span class="notification-badge">3</span>
                        </a>
                        <ul class="dropdown-menu notifications-menu">
                            <li class="notification-header">
                                <h6>Notifications</h6>
                            </li>
                            <li><a href="#"><i class="fas fa-info-circle text-info"></i> Service renewal reminder</a></li>
                            <li><a href="#"><i class="fas fa-ticket-alt text-warning"></i> Support ticket updated</a></li>
                            <li><a href="#"><i class="fas fa-credit-card text-success"></i> Payment received</a></li>
                            <li class="notification-footer">
                                <a href="#">View all notifications</a>
                            </li>
                        </ul>
                    </li>
                    
                    <!-- User Profile Dropdown -->
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle user-profile-trigger" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <div class="user-avatar">
                                <i class="fas fa-user-circle"></i>
                            </div>
                            <div class="user-info">
                                <span class="user-name">{$clientsdetails.firstname} {$clientsdetails.lastname}</span>
                                <span class="user-role">Premium Customer</span>
                            </div>
                            <i class="fas fa-chevron-down dropdown-arrow"></i>
                        </a>
                        <ul class="dropdown-menu user-menu user-menu-grid">
                            <li class="user-menu-header" style="grid-column: 1 / -1;">
                                <div class="user-details">
                                    <div class="user-avatar-large">
                                        <i class="fas fa-user-circle"></i>
                                    </div>
                                    <div class="user-info-detailed">
                                        <strong>{$clientsdetails.firstname} {$clientsdetails.lastname}</strong>
                                        <small>{$clientsdetails.email}</small>
                                    </div>
                                </div>
                            </li>
                            <li role="separator" class="divider" style="grid-column: 1 / -1;"></li>
                            <a href="{$WEB_ROOT}/clientarea.php" class="dropdown-item">
                                <i class="fas fa-tachometer-alt"></i>
                                <span>Dashboard</span>
                            </a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=details" class="dropdown-item">
                                <i class="fas fa-user-edit"></i>
                                <span>My Account</span>
                            </a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=services" class="dropdown-item">
                                <i class="fas fa-server"></i>
                                <span>My Services</span>
                            </a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=domains" class="dropdown-item">
                                <i class="fas fa-globe"></i>
                                <span>My Domains</span>
                            </a>
                            <a href="{$WEB_ROOT}/supporttickets.php" class="dropdown-item">
                                <i class="fas fa-life-ring"></i>
                                <span>Support</span>
                            </a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="dropdown-item">
                                <i class="fas fa-file-invoice"></i>
                                <span>Billing</span>
                            </a>
                            <a href="{$WEB_ROOT}/clientarea.php?action=security" class="dropdown-item">
                                <i class="fas fa-shield-alt"></i>
                                <span>Security</span>
                            </a>
                            <a href="{$WEB_ROOT}/logout.php" class="dropdown-item logout-link" style="grid-column: 1 / -1; border-top: 1px solid var(--ds-gray-700); margin-top: 0.5rem; padding-top: 1rem;">
                                <i class="fas fa-sign-out-alt"></i>
                                <span>Logout</span>
                            </a>
                        </ul>
                    </li>
                {else}
                    <li><a href="{$WEB_ROOT}/login.php" class="navbar-btn-outline">
                        <i class="fas fa-sign-in-alt"></i> Login
                    </a></li>
                    <li><a href="{$WEB_ROOT}/register.php" class="navbar-btn-primary">
                        <i class="fas fa-user-plus"></i> Sign Up
                    </a></li>
                {/if}
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
</nav>


