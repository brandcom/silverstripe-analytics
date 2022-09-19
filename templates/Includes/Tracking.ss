<% if $SiteConfig.CookiebotId %>
    <% if $SiteConfig.ThemeColor %>
        <style>
            #CybotCookiebotDialogFooter #CybotCookiebotDialogBodyButtonAccept, #CybotCookiebotDialogFooter #CybotCookiebotDialogBodyLevelButtonAccept, #CybotCookiebotDialogFooter #CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll {
                background-color: $SiteConfig.ThemeColor !important;
                border-color: $SiteConfig.ThemeColor !important;
            }

            #CybotCookiebotDialogFooter .CybotCookiebotDialogBodyButton {
                border: 2px solid $SiteConfig.ThemeColor !important;
            }

            #CybotCookiebotDialog #CybotCookiebotDialogBodyContentText a, #CybotCookiebotDialog #CybotCookiebotDialogBodyLevelButtonIABHeaderViewPartnersLink, #CybotCookiebotDialog #CybotCookiebotDialogDetailBulkConsentList dt a, #CybotCookiebotDialog #CybotCookiebotDialogDetailFooter a, #CybotCookiebotDialog .CybotCookiebotDialogBodyLevelButtonIABDescription a, #CybotCookiebotDialog .CybotCookiebotDialogDetailBodyContentCookieLink, #CybotCookiebotDialogDetailBodyContentTextAbout a {
                color: $SiteConfig.ThemeColor !important;
            }
            #CybotCookiebotDialog.CybotEdge #CybotCookiebotDialogBodyEdgeMoreDetails a {
                color: $SiteConfig.ThemeColor !important;
            }
        </style>
    <% end_if %>
    <script
        id="Cookiebot"
        src="https://consent.cookiebot.com/uc.js"
        data-cbid="$SiteConfig.CookiebotId"
        data-blockingmode="auto"
    ></script>
<% end_if %>

<% if $SiteConfig.GaTrackingId %>
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
