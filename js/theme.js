/*!
 * DoubleSpeed Theme JavaScript
 * Enhanced menu functionality and UI interactions
 */

(function($) {
    'use strict';

    // Initialize theme functionality when document is ready
    $(document).ready(function() {
        initializeTheme();
    });

    function initializeTheme() {
        initAdvancedMenu();
        initSmoothScrolling();
        initAnimations();
        initTooltips();
        initBackToTop();
    }

    // Advanced Menu System
    function initAdvancedMenu() {
        var $mobileMenuButton = $('#mobile-menu-button');
        var $mobileMenu = $('#mobile-menu');
        var $userMenuButton = $('#user-menu-button');
        var $userMenu = $('#user-menu');

        // Mobile menu toggle
        $mobileMenuButton.on('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            
            $mobileMenu.toggleClass('show');
            
            // Close user menu if open
            $userMenu.removeClass('show');
            
            // Add body class to prevent scrolling
            if ($mobileMenu.hasClass('show')) {
                $('body').addClass('mobile-menu-open');
            } else {
                $('body').removeClass('mobile-menu-open');
            }
        });

        // User menu toggle
        $userMenuButton.on('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            
            $userMenu.toggleClass('show');
            
            // Close mobile menu if open
            $mobileMenu.removeClass('show');
            $('body').removeClass('mobile-menu-open');
            
            // Rotate caret icon
            var $caret = $(this).find('.caret');
            if ($userMenu.hasClass('show')) {
                $caret.css('transform', 'rotate(180deg)');
            } else {
                $caret.css('transform', 'rotate(0deg)');
            }
        });

        // Close menus when clicking outside
        $(document).on('click', function(e) {
            var $target = $(e.target);
            
            // Close mobile menu
            if (!$target.closest('#mobile-menu-button').length && 
                !$target.closest('#mobile-menu').length && 
                $mobileMenu.hasClass('show')) {
                $mobileMenu.removeClass('show');
                $('body').removeClass('mobile-menu-open');
            }
            
            // Close user menu
            if (!$target.closest('#user-menu-button').length && 
                !$target.closest('#user-menu').length && 
                $userMenu.hasClass('show')) {
                $userMenu.removeClass('show');
                $userMenuButton.find('.caret').css('transform', 'rotate(0deg)');
            }
        });

        // Close menus on escape key
        $(document).on('keydown', function(e) {
            if (e.key === 'Escape' || e.keyCode === 27) {
                $mobileMenu.removeClass('show');
                $userMenu.removeClass('show');
                $('body').removeClass('mobile-menu-open');
                $userMenuButton.find('.caret').css('transform', 'rotate(0deg)');
            }
        });

        // Handle navbar dropdown clicks
        $('.navbar-nav .dropdown > a').on('click', function(e) {
            e.preventDefault();
            var $dropdown = $(this).parent('.dropdown');
            var $menu = $dropdown.find('.dropdown-menu');
            
            $dropdown.siblings('.dropdown').removeClass('open');
            $dropdown.toggleClass('open');
        });
    }

    // Smooth scrolling for anchor links
    function initSmoothScrolling() {
        $('a[href^="#"]').on('click', function(e) {
            var target = $(this.getAttribute('href'));
            if (target.length) {
                e.preventDefault();
                $('html, body').stop().animate({
                    scrollTop: target.offset().top - 80 // Account for fixed header
                }, 1000);
            }
        });
    }

    // Initialize animations and effects
    function initAnimations() {
        // Add glow effect on hover for buttons
        $('.btn-primary, .btn-secondary, .btn-outline').hover(
            function() {
                $(this).addClass('shadow-glow-green');
            },
            function() {
                $(this).removeClass('shadow-glow-green');
            }
        );

        // Animate cards on hover
        $('.card-dark, .home-shortcuts a').hover(
            function() {
                $(this).css('transform', 'translateY(-5px)');
            },
            function() {
                $(this).css('transform', 'translateY(0)');
            }
        );

        // Add loading animation to forms
        $('form').on('submit', function() {
            var $submitBtn = $(this).find('input[type="submit"], button[type="submit"]');
            $submitBtn.addClass('loading').prop('disabled', true);
            
            // Add spinner icon
            var originalText = $submitBtn.val() || $submitBtn.text();
            $submitBtn.data('original-text', originalText);
            $submitBtn.val('Loading...').text('Loading...');
            
            // Restore button after 10 seconds (fallback)
            setTimeout(function() {
                $submitBtn.removeClass('loading').prop('disabled', false);
                $submitBtn.val($submitBtn.data('original-text')).text($submitBtn.data('original-text'));
            }, 10000);
        });
    }

    // Initialize tooltips
    function initTooltips() {
        if ($.fn.tooltip) {
            $('[data-toggle="tooltip"]').tooltip({
                container: 'body',
                placement: 'auto'
            });
        }
    }

    // Back to top functionality
    function initBackToTop() {
        var $backToTop = $('.back-to-top');
        
        // Show/hide back to top button based on scroll position
        $(window).scroll(function() {
            if ($(this).scrollTop() > 300) {
                $backToTop.fadeIn();
            } else {
                $backToTop.fadeOut();
            }
        });

        // Smooth scroll to top
        $backToTop.on('click', function(e) {
            e.preventDefault();
            $('html, body').animate({scrollTop: 0}, 600);
        });
    }

    // Domain search enhancements
    function initDomainSearch() {
        var $domainForm = $('#frmDomainHomepage');
        var $domainInput = $domainForm.find('input[name="domain"]');
        
        $domainInput.on('keyup', function() {
            var domain = $(this).val().toLowerCase();
            if (domain.length > 3 && !domain.includes('.')) {
                $(this).addClass('suggest-tld');
            } else {
                $(this).removeClass('suggest-tld');
            }
        });

        // Add domain suggestions
        $domainInput.on('focus', function() {
            if (!$('.domain-suggestions').length) {
                var suggestions = ['com', 'net', 'org', 'info', 'biz'];
                var $suggestions = $('<div class="domain-suggestions"></div>');
                
                suggestions.forEach(function(tld) {
                    $suggestions.append('<span class="tld-suggestion">.' + tld + '</span>');
                });
                
                $domainInput.after($suggestions);
                
                $('.tld-suggestion').on('click', function() {
                    var currentDomain = $domainInput.val().split('.')[0];
                    $domainInput.val(currentDomain + $(this).text());
                    $('.domain-suggestions').remove();
                });
            }
        });
    }

    // Status indicator animations
    function initStatusIndicators() {
        $('.label, .badge').each(function() {
            var $this = $(this);
            setTimeout(function() {
                $this.addClass('animate-pulse');
            }, Math.random() * 2000);
        });
    }

    // Form validation enhancements
    function initFormValidation() {
        $('form input, form select, form textarea').on('blur', function() {
            var $field = $(this);
            var value = $field.val();
            
            if ($field.attr('required') && !value) {
                $field.addClass('error');
            } else {
                $field.removeClass('error');
            }
        });
    }

    // Notification system
    function showNotification(message, type) {
        type = type || 'info';
        var $notification = $('<div class="notification notification-' + type + '">' + message + '</div>');
        
        $('body').append($notification);
        
        setTimeout(function() {
            $notification.addClass('show');
        }, 100);
        
        setTimeout(function() {
            $notification.removeClass('show');
            setTimeout(function() {
                $notification.remove();
            }, 300);
        }, 4000);
    }

    // Enhanced table functionality
    function initTableEnhancements() {
        $('table').each(function() {
            var $table = $(this);
            
            // Add responsive wrapper if not present
            if (!$table.parent('.table-responsive').length) {
                $table.wrap('<div class="table-responsive"></div>');
            }
            
            // Add hover effects to rows
            $table.find('tbody tr').hover(
                function() {
                    $(this).addClass('highlight');
                },
                function() {
                    $(this).removeClass('highlight');
                }
            );
        });
    }

    // Initialize all enhancements
    $(document).ready(function() {
        initDomainSearch();
        initStatusIndicators();
        initFormValidation();
        initTableEnhancements();
    });

    // Expose functions globally for external use
    window.DoubleSpeedTheme = {
        showNotification: showNotification,
        initAdvancedMenu: initAdvancedMenu,
        initAnimations: initAnimations
    };

})(jQuery);