<%-- Cookiebot --%>
<script
    id="Cookiebot"
    src="https://consent.cookiebot.com/uc.js"
    data-cbid="$SiteConfig.CookiebotId"
    data-blockingmode="auto"
    type="text/javascript"
></script>


<%-- Google Analytics --%>
<script
    async
    data-cookieconsent="statistics"
    src="https://www.googletagmanager.com/gtag/js?id=$SiteConfig.GaTrackingId"
    type="text/plain"
></script>
<script
    data-cookieconsent="statistics"
    type="text/plain"
>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', '$SiteConfig.GaTrackingId', {'anonymize_ip': true});
</script>