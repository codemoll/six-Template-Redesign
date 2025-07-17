{* Navigation Items - WHMCS Six Compatible with DoubleSpeed Styling *}
{foreach $navbar as $item}
    <li menuItemName="{$item->getName()}" class="{if $item->hasChildren()}dropdown{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
        <a {if $item->hasChildren()}class="dropdown-toggle" data-toggle="dropdown" href="#"{else}href="{$item->getUri()}"{/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
            {$item->getLabel()}
            {if $item->hasBadge()}&nbsp;<span class="badge badge-primary">{$item->getBadge()}</span>{/if}
            {if $item->hasChildren()}&nbsp;<b class="caret"></b>{/if}
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

<style>
/* DoubleSpeed Navigation Styling */
.navbar-nav > li > a {
    color: var(--ds-text-light) !important;
    padding: 15px 16px;
    border-radius: 6px;
    margin: 0 2px;
    transition: all 0.3s ease;
    font-weight: 500;
}

.navbar-nav > li > a:hover,
.navbar-nav > li > a:focus {
    color: var(--ds-neon-green) !important;
    background-color: rgba(0, 255, 136, 0.1) !important;
}

.navbar-nav > li.active > a,
.navbar-nav > li.active > a:hover,
.navbar-nav > li.active > a:focus {
    color: var(--ds-neon-green) !important;
    background-color: rgba(0, 255, 136, 0.15) !important;
}

.navbar-nav .dropdown-menu {
    background-color: var(--ds-dark-surface);
    border: 1px solid var(--ds-gray-700);
    border-radius: 8px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
    margin-top: 5px;
}

.navbar-nav .dropdown-menu > li > a {
    color: var(--ds-text-light);
    padding: 12px 20px;
    transition: all 0.3s ease;
}

.navbar-nav .dropdown-menu > li > a:hover,
.navbar-nav .dropdown-menu > li > a:focus {
    color: var(--ds-neon-green);
    background-color: rgba(0, 255, 136, 0.1);
}

.navbar-nav .dropdown-menu > .active > a,
.navbar-nav .dropdown-menu > .active > a:hover,
.navbar-nav .dropdown-menu > .active > a:focus {
    color: var(--ds-neon-green);
    background-color: rgba(0, 255, 136, 0.15);
}

.navbar-nav .badge {
    background-color: var(--ds-neon-green);
    color: var(--ds-dark-bg);
    border-radius: 10px;
    font-size: 0.7em;
    font-weight: 600;
}

.navbar-nav .caret {
    border-top-color: var(--ds-text-light);
    transition: transform 0.3s ease;
}

.navbar-nav .dropdown.open .caret {
    transform: rotate(180deg);
    border-top-color: var(--ds-neon-green);
}

/* Mobile Navigation Styling */
@media (max-width: 767px) {
    .navbar-nav {
        margin: 0;
    }
    
    .navbar-nav > li > a {
        margin: 0;
        border-radius: 0;
        border-bottom: 1px solid var(--ds-gray-700);
    }
    
    .navbar-nav .dropdown-menu {
        position: static;
        float: none;
        width: auto;
        margin-top: 0;
        background-color: var(--ds-dark-bg-alt);
        border: none;
        box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
        border-radius: 0;
    }
    
    .navbar-nav .dropdown-menu > li > a {
        padding-left: 30px;
    }
}

/* Button Styling for Auth */
.navbar-nav .btn-outline {
    border: 1px solid var(--ds-neon-green);
    color: var(--ds-neon-green);
    background-color: transparent;
    padding: 8px 16px;
    border-radius: 6px;
    text-decoration: none;
    transition: all 0.3s ease;
}

.navbar-nav .btn-outline:hover {
    background-color: var(--ds-neon-green);
    color: var(--ds-dark-bg);
}

.navbar-nav .btn-primary {
    background-color: var(--ds-neon-green);
    border-color: var(--ds-neon-green);
    color: var(--ds-dark-bg);
    padding: 8px 16px;
    border-radius: 6px;
    text-decoration: none;
    transition: all 0.3s ease;
}

.navbar-nav .btn-primary:hover {
    background-color: #00e67a;
    border-color: #00e67a;
    box-shadow: var(--ds-glow-green);
}
</style>
