<?php

namespace jbennecker\Analytics;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
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

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab("Root.Tracking",
            TextField::create("CookiebotId", 'Cookiebot Id')
                ->setDescription('Only Cookie-blocking mode <strong>Manual</strong>'));

        $fields->addFieldToTab("Root.Tracking", TextField::create("ClickskeksApiKey", 'Clickskeks ID'));
        $fields->addFieldToTab("Root.Tracking", TextField::create("ClickskeksDomain", 'Clickskeks ID'));

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
