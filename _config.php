<?php

use SilverStripe\View\Parsers\ShortcodeParser;

ShortcodeParser::get('default')->register('cookiedeclaration',
    function ($arguments, $content = null, $parser, $shortcode) {
        return '[hier muss der zweite script tag aus dem cookiebot admin rein]';
    }
);
