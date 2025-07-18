/* DoubleSpeed Host Theme JavaScript - Mobile Navigation */

document.addEventListener('DOMContentLoaded', function() {
    // Mobile navbar toggle functionality
    const navbarToggle = document.querySelector('.navbar-toggle');
    const navbarCollapse = document.querySelector('.navbar-collapse');
    
    if (navbarToggle && navbarCollapse) {
        navbarToggle.addEventListener('click', function() {
            navbarCollapse.classList.toggle('in');
            
            // Update ARIA attributes for accessibility
            const isExpanded = navbarCollapse.classList.contains('in');
            navbarToggle.setAttribute('aria-expanded', isExpanded);
        });
    }
    
    // Dropdown toggle functionality for mobile
    const dropdownToggles = document.querySelectorAll('.dropdown-toggle');
    
    dropdownToggles.forEach(function(toggle) {
        toggle.addEventListener('click', function(e) {
            e.preventDefault();
            const parent = this.closest('.dropdown');
            const menu = parent.querySelector('.dropdown-menu');
            
            if (menu) {
                // Close other open dropdowns
                const openDropdowns = document.querySelectorAll('.dropdown.open');
                openDropdowns.forEach(function(dropdown) {
                    if (dropdown !== parent) {
                        dropdown.classList.remove('open');
                    }
                });
                
                // Toggle current dropdown
                parent.classList.toggle('open');
            }
        });
    });
    
    // Close dropdown when clicking outside
    document.addEventListener('click', function(e) {
        if (!e.target.closest('.dropdown')) {
            const openDropdowns = document.querySelectorAll('.dropdown.open');
            openDropdowns.forEach(function(dropdown) {
                dropdown.classList.remove('open');
            });
        }
    });
    
    // Close mobile menu when window is resized to desktop
    window.addEventListener('resize', function() {
        if (window.innerWidth >= 768) {
            navbarCollapse.classList.remove('in');
            if (navbarToggle) {
                navbarToggle.setAttribute('aria-expanded', 'false');
            }
        }
    });
});