<?php

namespace jbennecker\Analytics;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\i18n\i18n;
use SilverStripe\ORM\DataExtension;

class SiteConfigDataExtension extends DataExtension
{

    private static $db = [
        'CookiebotId' => 'Varchar',
        'ClickskeksApiKey' => 'Varchar',
        'ClickskeksDomain' => 'Varchar',
        'GoogleTagManagerID' => 'Varchar',
        'MatomoTagManagerContainerId' => 'Varchar',
    ];

    /**
     * Gibt den Sprach-Code für Cookiebot zurück
     *
     * @link https://support.cookiebot.com/hc/en-us/articles/360003793394-How-to-set-the-language-of-the-consent-banner
     */
    public function CookiebotCulture(): string
    {
        $locale = i18n::get_locale();
        $locale = i18n::convert_rfc1766($locale);

        return substr($locale, 0,2);
    }

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab("Root.Tracking",
            TextField::create("CookiebotId", 'Cookiebot Id')
                ->setDescription('Only Cookie-blocking mode <strong>Manual</strong>'));

        $fields->addFieldToTab("Root.Tracking", TextField::create("ClickskeksApiKey", 'ClickskeksApiKey'));
        $fields->addFieldToTab("Root.Tracking", TextField::create("ClickskeksDomain", 'ClickskeksDomain'));

        $fields->addFieldToTab("Root.Tracking",
            TextField::create("GoogleTagManagerID", 'Google TagManager ID')
        );

        $MatomoHelpText = <<<HTML
ID ist auch im TagManager Snippet src URL in "https://stats.brandcom.de/js/container_<strong>[Container ID]</strong>.js" zu finden. <br>
Bitte <strong>Disable Cookies</strong> und <strong>Bundle Tracker</strong>  in der Matomo TagManager Konfiguration einschalten!"
HTML;

        $fields->addFieldToTab("Root.Tracking",
            TextField::create("MatomoTagManagerContainerId",
                'Matomo TagManager Container ID')
                ->setDescription($MatomoHelpText)
        );
    }
}
