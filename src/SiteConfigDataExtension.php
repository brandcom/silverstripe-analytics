<?php
namespace jbennecker\Analytics;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;

class SiteConfigDataExtension extends DataExtension
{
    private static $db = [
        'GaTrackingId' => 'Varchar',
        'CookiebotId' => 'Varchar',
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab("Root.Tracking", new TextField("CookiebotId"));
        $fields->addFieldToTab("Root.Tracking", new TextField("GaTrackingId"));
    }
}
