<?php

use SilverStripe\SiteConfig\SiteConfig;
use SilverStripe\View\Parsers\ShortcodeParser;

ShortcodeParser::get('default')->register('cookiedeclaration',
    function ($arguments, $content = null, $parser, $shortcode) {
        $config = SiteConfig::current_site_config();
        return '<script id="CookieDeclaration" src="https://consent.cookiebot.com/' . $config->CookiebotId . '/cd.js" type="text/javascript" async></script>';
    }
);
