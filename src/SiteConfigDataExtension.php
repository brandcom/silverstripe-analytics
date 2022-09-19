<?php
namespace jbennecker\Analytics;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;

class SiteConfigDataExtension extends DataExtension
{
    private static $db = [
        'CookiebotId' => 'Varchar',
        'GaTrackingId' => 'Varchar',
        'MatomoTrackingId' => 'Varchar',
        'ThemeColor' => 'Varchar',
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab("Root.Tracking", new TextField("CookiebotId"));
        $fields->addFieldToTab("Root.Tracking", new TextField("GaTrackingId"));
        $fields->addFieldToTab("Root.Tracking", new TextField("MatomoTrackingId"));
        $fields->addFieldToTab("Root.Tracking", new TextField("ThemeColor"));
    }
}
