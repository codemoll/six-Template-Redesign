
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

<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-6">
                <div class="footer-content">
                    <div class="footer-logo">
                        {if $assetLogoPath}
                            <img src="{$assetLogoPath}" alt="{$companyname}" style="height: 32px; margin-right: 12px;">
                        {/if}
                        <span class="font-orbitron font-bold glow-text">{$companyname}</span>
                    </div>
                    <p class="footer-text">
                        {lang key="copyrightFooterNotice" year=$date_year company=$companyname}
                    </p>
                    <p class="footer-description">
                        Fast, reliable, and secure hosting solutions with cutting-edge technology and 24/7 expert support.
                    </p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="footer-links">
                    <h6>Quick Links</h6>
                    <ul>
                        <li><a href="{$WEB_ROOT}/index.php">Home</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php">Hosting</a></li>
                        <li><a href="{$WEB_ROOT}/domainchecker.php">Domains</a></li>
                        <li><a href="{$WEB_ROOT}/knowledgebase.php">Support</a></li>
                        <li><a href="{$WEB_ROOT}/contact.php">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row footer-bottom">
            <div class="col-sm-6">
                <div class="footer-social">
                    <span>Follow us:</span>
                    <div class="social-links">
                        <a href="#" class="social-link" aria-label="Facebook">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-link" aria-label="Twitter">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-link" aria-label="LinkedIn">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a href="#" class="social-link" aria-label="GitHub">
                            <i class="fab fa-github"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 text-right">
                <a href="#" class="back-to-top">
                    <i class="fas fa-chevron-up"></i>
                    Back to Top
                </a>
            </div>
        </div>
    </div>
</footer>

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
        <div class="modal-content panel-primary card-dark">
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

</body>
</html>
