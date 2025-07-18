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
                        <div class="brand-icon">
                            <i class="fas fa-rocket"></i>
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
                {foreach $navbar as $item}
                    <li menuItemName="{$item->getName()}" class="{if $item->hasChildren()}dropdown{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
                        <a {if $item->hasChildren()}class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"{else}href="{$item->getUri()}"{/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
                            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                            {$item->getLabel()}
                            {if $item->hasBadge()}&nbsp;<span class="badge badge-primary">{$item->getBadge()}</span>{/if}
                            {if $item->hasChildren()}&nbsp;<span class="caret"></span>{/if}
                        </a>
                        {if $item->hasChildren()}
                            <ul class="dropdown-menu">
                            {foreach $item->getChildren() as $childItem}
                                <li menuItemName="{$childItem->getName()}"{if $childItem->getClass()} class="{$childItem->getClass()}"{/if} id="{$childItem->getId()}">
                                    <a href="{$childItem->getUri()}"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                                        {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                        {$childItem->getLabel()}
                                        {if $childItem->hasBadge()}&nbsp;<span class="badge badge-primary">{$childItem->getBadge()}</span>{/if}
                                    </a>
                                </li>
                            {/foreach}
                            </ul>
                        {/if}
                    </li>
                {/foreach}
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
                        <ul class="dropdown-menu user-menu">
                            <li class="user-menu-header">
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
                            <li role="separator" class="divider"></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=details"><i class="fas fa-user-edit"></i> <span>My Account</span></a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=services"><i class="fas fa-server"></i> <span>My Services</span></a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=domains"><i class="fas fa-globe"></i> <span>My Domains</span></a></li>
                            <li><a href="{$WEB_ROOT}/supporttickets.php"><i class="fas fa-life-ring"></i> <span>Support Tickets</span></a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=invoices"><i class="fas fa-file-invoice"></i> <span>Billing & Invoices</span></a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=security"><i class="fas fa-shield-alt"></i> <span>Security Settings</span></a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="{$WEB_ROOT}/logout.php" class="logout-link"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></a></li>
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


