<% if $SiteConfig.CookiebotId %>
    <script
        id="Cookiebot"
        src="https://consent.cookiebot.com/uc.js"
        data-cbid="$SiteConfig.CookiebotId"
        type="text/javascript"
        async
    ></script>
<% end_if %>

<% if $SiteConfig.GaTrackingId %>
    <!-- Google Tag Manager -->
    <script
        data-cookieconsent="statistics"
        type="text/plain"
    >
        (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-5KJKLT7');
    </script>
    <!-- End Google Tag Manager -->
<% end_if %>

<% if $SiteConfig.MatomoTrackingId %>
    <script
        data-cookieconsent="statistics"
        type="text/plain"
    >
        var _mtm = window._mtm = window._mtm || [];
        _mtm.push({'mtm.startTime': (new Date().getTime()), 'event': 'mtm.Start'});
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
        g.async=true; g.src='https://stats.brandcom.de/js/container_$MatomoTrackingId.js'; s.parentNode.insertBefore(g,s);
    </script>
<% end_if %>
