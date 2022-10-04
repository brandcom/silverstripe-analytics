<?php

use SilverStripe\SiteConfig\SiteConfig;
use SilverStripe\View\Parsers\ShortcodeParser;

ShortcodeParser::get('default')->register('cookiedeclaration',
    function ($arguments, $content = null, $parser = null, $tagName = null) {
        $config = SiteConfig::current_site_config();
        return '<script id="CookieDeclaration" src="https://consent.cookiebot.com/' . $config->CookiebotId . '/cd.js" type="text/javascript" async></script>';
    }
);

ShortcodeParser::get('default')->register(
    'cookiebot',
    function ($arguments, $content = null, $parser = null, $tagName = null) {
        $content = (empty($content)) ? 'Cookie Zustimmungsänderung' : $content;
        return sprintf(
            "<a href=\"javascript:Cookiebot.renew();\">%s</a>",
            $content
        );
    }
);

ShortcodeParser::get('default')->register('youtube',
    function ($arguments, $content = null, $parser = null, $tagName = null) {
        if (empty($arguments['id'])) {
            return '[youtube] shortcode fehlt die ID des Films [youtube,id="dieYoutubeId"]';
        }
        $youtubeID = htmlspecialchars($arguments['id']);
        return sprintf(
            '<iframe data-cookieconsent="marketing" data-src="https://www.youtube-nocookie.com/embed/%1$s?rel=0"></iframe>' .
            '<div class="cookieconsent-optout-marketing">
  <p>Bitte lassen Sie <a href="javascript:Cookiebot.renew()">Cookies</a> zu, um das Youtube Video anzuzeigen.</p>
  <p>Oder schauen Sie es <a target="_blank" href="https://www.youtube.com/watch?v=%1$s">hier direkt auf Youtube</a> an.</p>
</div>',
            $youtubeID);
    }
);

