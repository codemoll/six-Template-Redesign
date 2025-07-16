
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            <div class="clearfix"></div>
        </div>
    </div>
</section>

    </main>
    
    <!-- Footer -->
    <footer style="background-color: #1a1a1a; border-top: 1px solid #374151; margin-top: 4rem;">
        <div style="max-width: 80rem; margin: 0 auto; padding: 3rem 1rem;">
            <div style="display: grid; grid-template-columns: repeat(1, minmax(0, 1fr)); gap: 2rem;">
                
                <!-- Company Info -->
                <div style="grid-column: span 1;">
                    <div style="display: flex; align-items: center; margin-bottom: 1rem;">
                        {if $assetLogoPath}
                            <img src="{$assetLogoPath}" alt="{$companyname}" style="height: 2rem; width: auto; margin-right: 0.75rem;">
                        {else}
                            <div style="width: 2rem; height: 2rem; background: linear-gradient(135deg, #00ff88, #007bff); border-radius: 0.25rem; margin-right: 0.75rem;"></div>
                        {/if}
                        <span class="font-orbitron glow-text" style="font-family: Orbitron, monospace; font-weight: 700; font-size: 1.25rem; background: linear-gradient(to right, #00ff88, #007bff); -webkit-background-clip: text; background-clip: text; color: transparent;">{$companyname}</span>
                    </div>
                    <p style="color: #bfbfbf; font-size: 0.875rem; margin-bottom: 1.5rem; max-width: 28rem;">
                        Experience lightning-fast hosting with cutting-edge technology and 24/7 expert support. 
                        Your digital presence deserves the best infrastructure.
                    </p>
                    
                    <!-- Social Links -->
                    <div style="display: flex; gap: 1rem; margin-bottom: 2rem;">
                        <a href="#" style="color: #bfbfbf; padding: 0.5rem; border-radius: 0.5rem; text-decoration: none; transition: all 0.3s ease;">
                            <svg style="width: 1.25rem; height: 1.25rem;" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/>
                            </svg>
                        </a>
                        <a href="#" style="color: #bfbfbf; padding: 0.5rem; border-radius: 0.5rem; text-decoration: none; transition: all 0.3s ease;">
                            <svg style="width: 1.25rem; height: 1.25rem;" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                            </svg>
                        </a>
                        <a href="#" style="color: #bfbfbf; padding: 0.5rem; border-radius: 0.5rem; text-decoration: none; transition: all 0.3s ease;">
                            <svg style="width: 1.25rem; height: 1.25rem;" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M22.46 6c-.77.35-1.6.58-2.46.69.88-.53 1.56-1.37 1.88-2.38-.83.5-1.75.85-2.72 1.05C18.37 4.5 17.26 4 16 4c-2.35 0-4.27 1.92-4.27 4.29 0 .34.04.67.11.98C8.28 9.09 5.11 7.38 3 4.79c-.37.63-.58 1.37-.58 2.15 0 1.49.75 2.81 1.91 3.56-.71 0-1.37-.2-1.95-.5v.03c0 2.08 1.48 3.82 3.44 4.21a4.22 4.22 0 0 1-1.93.07 4.28 4.28 0 0 0 4 2.98 8.521 8.521 0 0 1-5.33 1.84c-.34 0-.68-.02-1.02-.06C3.44 20.29 5.7 21 8.12 21 16 21 20.33 14.46 20.33 8.79c0-.19 0-.37-.01-.56.84-.6 1.56-1.36 2.14-2.23z"/>
                            </svg>
                        </a>
                        <a href="#" style="color: #bfbfbf; padding: 0.5rem; border-radius: 0.5rem; text-decoration: none; transition: all 0.3s ease;">
                            <svg style="width: 1.25rem; height: 1.25rem;" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M12.017 0C5.396 0 .029 5.367.029 11.987c0 5.079 3.158 9.417 7.618 11.174-.105-.949-.199-2.403.041-3.439.219-.937 1.406-5.957 1.406-5.957s-.359-.72-.359-1.781c0-1.663.967-2.911 2.168-2.911 1.024 0 1.518.769 1.518 1.688 0 1.029-.653 2.567-.992 3.992-.285 1.193.6 2.165 1.775 2.165 2.128 0 3.768-2.245 3.768-5.487 0-2.861-2.063-4.869-5.008-4.869-3.41 0-5.409 2.562-5.409 5.199 0 1.033.394 2.143.889 2.745.097.118.112.222.085.343-.09.375-.293 1.199-.334 1.363-.053.225-.172.271-.402.165-1.495-.69-2.433-2.878-2.433-4.646 0-3.776 2.748-7.252 7.92-7.252 4.158 0 7.392 2.967 7.392 6.923 0 4.135-2.607 7.462-6.233 7.462-1.214 0-2.357-.629-2.746-1.378l-.747 2.848c-.269 1.045-1.004 2.352-1.498 3.146 1.123.345 2.306.535 3.55.535 6.624 0 11.99-5.367 11.99-11.988C24.007 5.367 18.641.001 12.017.001z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
            
            <!-- Footer Columns -->
            <div style="display: grid; grid-template-columns: repeat(1, minmax(0, 1fr)); gap: 2rem; margin-top: 2rem;">
                
                <!-- Quick Links -->
                <div style="grid-column: span 1;">
                    <h3 style="color: white; font-weight: 600; font-family: Orbitron, monospace; margin-bottom: 1rem;">Quick Links</h3>
                    <ul style="list-style: none; margin: 0; padding: 0; display: flex; flex-direction: column; gap: 0.5rem;">
                        <li><a href="{$WEB_ROOT}/index.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Home</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Hosting Plans</a></li>
                        <li><a href="{$WEB_ROOT}/domainchecker.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Domain Search</a></li>
                        <li><a href="{$WEB_ROOT}/knowledgebase.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Knowledge Base</a></li>
                        <li><a href="{$WEB_ROOT}/serverstatus.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Server Status</a></li>
                        <li><a href="{$WEB_ROOT}/contact.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Contact Us</a></li>
                    </ul>
                </div>
                
                <!-- Support -->
                <div style="grid-column: span 1;">
                    <h3 style="color: white; font-weight: 600; font-family: Orbitron, monospace; margin-bottom: 1rem;">Support</h3>
                    <ul style="list-style: none; margin: 0; padding: 0; display: flex; flex-direction: column; gap: 0.5rem;">
                        <li><a href="{$WEB_ROOT}/submitticket.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Submit Ticket</a></li>
                        <li><a href="{$WEB_ROOT}/clientarea.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Client Area</a></li>
                        <li><a href="{$WEB_ROOT}/announcements.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Announcements</a></li>
                        <li><a href="{$WEB_ROOT}/affiliates.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Affiliate Program</a></li>
                        <li><a href="{$WEB_ROOT}/pwreset.php" style="color: #bfbfbf; font-size: 0.875rem; text-decoration: none; transition: color 0.3s ease;">Password Reset</a></li>
                    </ul>
                </div>
            </div>
            
            <!-- Bottom Section -->
            <div style="margin-top: 2rem; padding-top: 2rem; border-top: 1px solid #374151;">
                <div style="display: flex; flex-direction: column; justify-content: space-between; align-items: center; gap: 1rem;">
                    <div style="color: #bfbfbf; font-size: 0.875rem; text-align: center;">
                        {lang key="copyrightFooterNotice" year=$date_year company=$companyname}
                    </div>
                    <div style="display: flex; gap: 1.5rem; flex-wrap: wrap; justify-content: center;">
                        <a href="#" style="color: #bfbfbf; font-size: 0.75rem; text-decoration: none; transition: color 0.3s ease;">Privacy Policy</a>
                        <a href="#" style="color: #bfbfbf; font-size: 0.75rem; text-decoration: none; transition: color 0.3s ease;">Terms of Service</a>
                        <a href="#" style="color: #bfbfbf; font-size: 0.75rem; text-decoration: none; transition: color 0.3s ease;">AUP</a>
                    </div>
                </div>
                
                <!-- Contact Info -->
                <div style="margin-top: 1.5rem; padding-top: 1.5rem; border-top: 1px solid #374151;">
                    <div style="display: flex; flex-direction: column; justify-content: space-between; align-items: center; font-size: 0.875rem; color: #bfbfbf; gap: 1rem; text-align: center;">
                        <div style="display: flex; flex-direction: column; gap: 0.5rem; align-items: center;">
                            <div style="display: flex; align-items: center;">
                                <svg style="width: 1rem; height: 1rem; margin-right: 0.5rem; color: #00ff88;" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z"/>
                                </svg>
                                <span>24/7 Support Available</span>
                            </div>
                            <div style="display: flex; align-items: center;">
                                <svg style="width: 1rem; height: 1rem; margin-right: 0.5rem; color: #00ff88;" fill="currentColor" viewBox="0 0 20 20">
                                    <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"/>
                                    <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"/>
                                </svg>
                                <span>Expert Technical Support</span>
                            </div>
                        </div>
                        <div>
                            <span style="color: #00ff88;">99.9% Uptime Guarantee</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Back to Top Button -->
    <button id="back-to-top" style="position: fixed; bottom: 2rem; right: 2rem; background-color: #00ff88; color: #121212; padding: 0.75rem; border-radius: 9999px; box-shadow: 0 0 20px rgba(0, 255, 136, 0.5); opacity: 0; transition: all 0.3s ease; z-index: 40; border: none; cursor: pointer;">
        <svg style="width: 1.5rem; height: 1.5rem;" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"/>
        </svg>
    </button>

<div id="fullpage-overlay" class="hidden">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
            <br>
            <span class="msg"></span>
        </div>
    </div>
</div>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">{$LANG.close}</span>
                </button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body panel-body">
                {$LANG.loading}
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-notch fa-spin"></i>
                    {$LANG.loading}
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    {$LANG.close}
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    {$LANG.submit}
                </button>
            </div>
        </div>
    </div>
</div>

{include file="$template/includes/generate-password.tpl"}

{$footeroutput}

<style>
/* Footer Link Hover Effects */
footer a:hover {
    color: #00ff88 !important;
}

/* Social Link Hover Effects */
footer a[href="#"]:hover {
    background-color: #2a2a2a;
    box-shadow: 0 0 20px rgba(0, 255, 136, 0.5);
    transform: scale(1.1);
}

/* Back to Top Button Hover */
#back-to-top:hover {
    transform: scale(1.1);
    box-shadow: 0 0 30px rgba(0, 255, 136, 0.7);
}

/* Responsive Grid for Footer */
@media (min-width: 768px) {
    footer > div > div:first-child {
        grid-template-columns: repeat(2, minmax(0, 1fr)) !important;
    }
    footer > div > div:nth-child(2) {
        grid-template-columns: repeat(2, minmax(0, 1fr)) !important;
    }
    footer > div > div:last-child > div:first-child {
        flex-direction: row !important;
        text-align: left !important;
    }
    footer > div > div:last-child > div:last-child > div:first-child {
        flex-direction: row !important;
        align-items: center !important;
    }
}

@media (min-width: 1024px) {
    footer > div > div:first-child {
        grid-template-columns: repeat(1, minmax(0, 1fr)) !important;
    }
    footer > div > div:nth-child(2) {
        grid-template-columns: repeat(3, minmax(0, 1fr)) !important;
    }
}
</style>

<script>
// Back to top functionality
const backToTopButton = document.getElementById('back-to-top');

if (backToTopButton) {
    window.addEventListener('scroll', function() {
        if (window.pageYOffset > 300) {
            backToTopButton.style.opacity = '1';
        } else {
            backToTopButton.style.opacity = '0';
        }
    });
    
    backToTopButton.addEventListener('click', function() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// Add smooth scroll to internal anchor links only
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        const href = this.getAttribute('href');
        if (href && href !== '#') {
            e.preventDefault();
            const target = document.querySelector(href);
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        }
    });
});
</script>

</body>
</html>
