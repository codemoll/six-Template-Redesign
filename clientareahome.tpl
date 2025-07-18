{include file="$template/includes/flashmessage.tpl"}

<!-- Enhanced Welcome Section -->
<div class="dashboard-welcome-enhanced">
    <div class="welcome-container">
        <div class="welcome-content">
            <div class="welcome-icon">
                <i class="fas fa-rocket"></i>
            </div>
            <div class="welcome-text">
                <h1 class="welcome-title">
                    Welcome back, <span class="user-name-highlight">{if isset($clientsdetails.firstname)}{$clientsdetails.firstname}{else}User{/if}</span>!
                </h1>
                <p class="welcome-subtitle">
                    Manage your hosting services, domains, and support tickets from your comprehensive dashboard.
                </p>
            </div>
        </div>
        <div class="welcome-actions">
            <a href="clientarea.php?action=services" class="btn btn-primary-enhanced">
                <i class="fas fa-plus"></i> Add Service
            </a>
            <a href="supporttickets.php?action=open" class="btn btn-outline-enhanced">
                <i class="fas fa-life-ring"></i> Get Support
            </a>
        </div>
    </div>
</div>

<!-- Enhanced Dashboard Tiles -->
<div class="dashboard-tiles-enhanced">
    <div class="row">
        <div class="col-sm-3 col-xs-6">
            <div class="tile-enhanced services-tile" onclick="window.location='clientarea.php?action=services'">
                <div class="tile-icon">
                    <i class="fas fa-server"></i>
                </div>
                <div class="tile-content">
                    <div class="tile-number">{$clientsstats.productsnumactive}</div>
                    <div class="tile-label">{$LANG.navservices}</div>
                    <div class="tile-sublabel">Active Services</div>
                </div>
                <div class="tile-action">
                    <i class="fas fa-arrow-right"></i>
                </div>
            </div>
        </div>
        
        {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
            <div class="col-sm-3 col-xs-6">
                <div class="tile-enhanced domains-tile" onclick="window.location='clientarea.php?action=domains'">
                    <div class="tile-icon">
                        <i class="fas fa-globe-americas"></i>
                    </div>
                    <div class="tile-content">
                        <div class="tile-number">{$clientsstats.numactivedomains}</div>
                        <div class="tile-label">{$LANG.navdomains}</div>
                        <div class="tile-sublabel">Active Domains</div>
                    </div>
                    <div class="tile-action">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </div>
            </div>
        {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
            <div class="col-sm-3 col-xs-6">
                <div class="tile-enhanced affiliates-tile" onclick="window.location='affiliates.php'">
                    <div class="tile-icon">
                        <i class="fas fa-handshake"></i>
                    </div>
                    <div class="tile-content">
                        <div class="tile-number">{$clientsstats.numaffiliatesignups}</div>
                        <div class="tile-label">{$LANG.affiliatessignups}</div>
                        <div class="tile-sublabel">Referrals</div>
                    </div>
                    <div class="tile-action">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </div>
            </div>
        {else}
            <div class="col-sm-3 col-xs-6">
                <div class="tile-enhanced quotes-tile" onclick="window.location='clientarea.php?action=quotes'">
                    <div class="tile-icon">
                        <i class="fas fa-file-contract"></i>
                    </div>
                    <div class="tile-content">
                        <div class="tile-number">{$clientsstats.numquotes}</div>
                        <div class="tile-label">{$LANG.quotes}</div>
                        <div class="tile-sublabel">Pending Quotes</div>
                    </div>
                    <div class="tile-action">
                        <i class="fas fa-arrow-right"></i>
                    </div>
                </div>
            </div>
        {/if}
        
        <div class="col-sm-3 col-xs-6">
            <div class="tile-enhanced tickets-tile" onclick="window.location='supporttickets.php'">
                <div class="tile-icon">
                    <i class="fas fa-headset"></i>
                </div>
                <div class="tile-content">
                    <div class="tile-number">{$clientsstats.numactivetickets}</div>
                    <div class="tile-label">{$LANG.navtickets}</div>
                    <div class="tile-sublabel">Open Tickets</div>
                </div>
                <div class="tile-action">
                    <i class="fas fa-arrow-right"></i>
                </div>
            </div>
        </div>
        
        <div class="col-sm-3 col-xs-6">
            <div class="tile-enhanced invoices-tile" onclick="window.location='clientarea.php?action=invoices'">
                <div class="tile-icon">
                    <i class="fas fa-file-invoice-dollar"></i>
                </div>
                <div class="tile-content">
                    <div class="tile-number">{$clientsstats.numunpaidinvoices}</div>
                    <div class="tile-label">{$LANG.navinvoices}</div>
                    <div class="tile-sublabel">
                        {if $clientsstats.numunpaidinvoices > 0}Pending Payment{else}All Paid{/if}
                    </div>
                </div>
                <div class="tile-action">
                    <i class="fas fa-arrow-right"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Enhanced Search Section -->
<div class="dashboard-search-enhanced">
    <form role="form" method="post" action="clientarea.php?action=kbsearch">
        <div class="search-container">
            <div class="search-icon">
                <i class="fas fa-search"></i>
            </div>
            <input type="text" name="search" class="form-control search-input" placeholder="{$LANG.clientHomeSearchKb}" />
            <button type="submit" class="search-button">
                <i class="fas fa-arrow-right"></i>
            </button>
        </div>
    </form>
</div>

<!-- Quick Actions Section -->
<div class="quick-actions-section">
    <h3 class="section-title">
        <i class="fas fa-bolt"></i> Quick Actions
    </h3>
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <a href="cart.php" class="quick-action-card">
                <div class="action-icon">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="action-content">
                    <h4>Order New Service</h4>
                    <p>Browse our hosting packages</p>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="supporttickets.php?action=open" class="quick-action-card">
                <div class="action-icon">
                    <i class="fas fa-ticket-alt"></i>
                </div>
                <div class="action-content">
                    <h4>Open Support Ticket</h4>
                    <p>Get help from our experts</p>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="clientarea.php?action=addfunds" class="quick-action-card">
                <div class="action-icon">
                    <i class="fas fa-credit-card"></i>
                </div>
                <div class="action-content">
                    <h4>Add Funds</h4>
                    <p>Top up your account balance</p>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-6">
            <a href="clientarea.php?action=details" class="quick-action-card">
                <div class="action-icon">
                    <i class="fas fa-user-cog"></i>
                </div>
                <div class="action-content">
                    <h4>Account Settings</h4>
                    <p>Update your profile</p>
                </div>
            </a>
        </div>
    </div>
</div>

{foreach from=$addons_html item=addon_html}
    <div>
        {$addon_html}
    </div>
{/foreach}

<!-- Enhanced Client Home Panels -->
<div class="client-home-panels-enhanced">
    <div class="row">
        <div class="col-sm-12">

            {function name=outputHomePanels}
                <div menuItemName="{$item->getName()}" class="panel-enhanced panel-accent-{$item->getExtra('color')}{if $item->getClass()} {$item->getClass()}{/if}"{if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
                    <div class="panel-header-enhanced">
                        <div class="panel-title-container">
                            {if $item->hasIcon()}<i class="{$item->getIcon()} panel-icon"></i>{/if}
                            <h3 class="panel-title-enhanced">{$item->getLabel()}</h3>
                            {if $item->hasBadge()}<span class="panel-badge">{$item->getBadge()}</span>{/if}
                        </div>
                        {if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
                            <div class="panel-actions">
                                <a href="{$item->getExtra('btn-link')}" class="btn-panel-action">
                                    {if $item->getExtra('btn-icon')}<i class="{$item->getExtra('btn-icon')}"></i>{/if}
                                    {$item->getExtra('btn-text')}
                                </a>
                            </div>
                        {/if}
                    </div>
                    {if $item->hasBodyHtml()}
                        <div class="panel-body-enhanced">
                            {$item->getBodyHtml()}
                        </div>
                    {/if}
                    {if $item->hasChildren()}
                        <div class="panel-list-enhanced{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
                            {foreach $item->getChildren() as $childItem}
                                {if $childItem->getUri()}
                                    <a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="panel-list-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
                                        <div class="list-item-content">
                                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()} list-item-icon"></i>{/if}
                                            <span class="list-item-label">{$childItem->getLabel()}</span>
                                            {if $childItem->hasBadge()}<span class="list-item-badge">{$childItem->getBadge()}</span>{/if}
                                        </div>
                                        <i class="fas fa-chevron-right list-item-arrow"></i>
                                    </a>
                                {else}
                                    <div menuItemName="{$childItem->getName()}" class="panel-list-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
                                        <div class="list-item-content">
                                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()} list-item-icon"></i>{/if}
                                            <span class="list-item-label">{$childItem->getLabel()}</span>
                                            {if $childItem->hasBadge()}<span class="list-item-badge">{$childItem->getBadge()}</span>{/if}
                                        </div>
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    {/if}
                    {if $item->hasFooterHtml()}
                        <div class="panel-footer-enhanced">
                            {$item->getFooterHtml()}
                        </div>
                    {/if}
                </div>
            {/function}

            {foreach $panels as $item}
                {if $item->getExtra('colspan')}
                    {outputHomePanels}
                    {assign "panels" $panels->removeChild($item->getName())}
                {/if}
            {/foreach}

        </div>
        <div class="col-sm-6">

            {foreach $panels as $item}
                {if $item@iteration is odd}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
        <div class="col-sm-6">

            {foreach $panels as $item}
                {if $item@iteration is even}
                    {outputHomePanels}
                {/if}
            {/foreach}

        </div>
    </div>
</div>
