{* DoubleSpeed Host Navigation Bar - Bootstrap 3.4.1 Compatible *}
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#ds-navbar-collapse" aria-expanded="false" aria-controls="ds-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{$WEB_ROOT}/">
                {if $logoUrl}
                    <img src="{$logoUrl}" alt="{$companyname}" class="navbar-logo">
                {else}
                    <span class="brand-text">
                        <span class="brand-primary">DoubleSpeed</span><span class="brand-secondary">Host</span>
                    </span>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user-circle"></i> {$clientsdetails.firstname} {$clientsdetails.lastname} <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="{$WEB_ROOT}/clientarea.php"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=details"><i class="fas fa-user"></i> My Account</a></li>
                            <li><a href="{$WEB_ROOT}/supporttickets.php"><i class="fas fa-life-ring"></i> Support Tickets</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="{$WEB_ROOT}/logout.php"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                        </ul>
                    </li>
                {else}
                    <li><a href="{$WEB_ROOT}/login.php" class="navbar-btn-outline">Login</a></li>
                    <li><a href="{$WEB_ROOT}/register.php" class="navbar-btn-primary">Sign Up</a></li>
                {/if}
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
</nav>


