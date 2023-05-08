<% if $SiteConfig.GoogleTagManagerID %>
    <!-- Google Consent Mode -->
    <script data-cookieconsent="ignore">
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments)
        }
        gtag("consent", "default", {
            ad_storage: "denied",
            analytics_storage: "denied",
            functionality_storage: "denied",
            personalization_storage: "denied",
            security_storage: "granted",
            wait_for_update: 500
        });
        gtag("set", "ads_data_redaction", true);
        gtag("set", "url_passthrough", true);
    </script>
    <!-- End Google Consent Mode-->
<% end_if %>
<% if $SiteConfig.CookiebotId %>
    <script id="Cookiebot" src="https://consent.cookiebot.com/uc.js" data-cbid="$SiteConfig.CookiebotId" async></script>
<% end_if %>
<% if $SiteConfig.GoogleTagManagerID %>
    <!-- Google Tag Manager -->
    <script data-cookieconsent="statistics" type="text/plain">
        (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer', '$SiteConfig.GoogleTagManagerID');
    </script>
    <!-- End Google Tag Manager -->
<% end_if %>
<% if $SiteConfig.MatomoTagManagerContainerId %>
    <!-- Matomo Tag Manager -->
    <script data-cookieconsent="ignore">
        var _mtm = window._mtm = window._mtm || [];
        _mtm.push({'mtm.startTime': (new Date().getTime()), 'event': 'mtm.Start'});
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
        g.async=true; g.src='https://stats.brandcom.de/js/container_$SiteConfig.MatomoTagManagerContainerId\.js'; s.parentNode.insertBefore(g,s);
    </script>
    <% if $SiteConfig.CookiebotId %>
        <script data-cookieconsent="ignore">
            window.addEventListener("CookiebotOnConsentReady", function () {
                var C = Cookiebot.consent,
                    c = ["preferences", "statistics", "marketing"];
                function m(a) {_mtm.push({event: "cookie_consent_" + a})}
                c.forEach(function (i) {C[i] && m(i)})
            })
        </script>
    <% end_if %>

    <!-- End Matomo Tag Manager -->
<% end_if %>
