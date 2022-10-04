# silverstripe-analytics

# Installation

## 1. Install silverstripe-analytics

```
composer require jbennecker/silverstripe-analytics
```

## 2. Run dev/build?flush

## 3. Enter your credentials

Go to Admin > Settings > Tracking you can enter the the Cookiebot ID and Tagmanager IDs (Google and Matomo).
You can Google and/or Matomo TagManager.

### IMPORTANT:
* Please configure Matomo TagManager to check "Disable Cookies" and "Bundle Tracker"
* Cookiebot is included in manual mode

## 4. Include the tracking code in your template

Put this at the top of your `<head>`.

```
<% include Tracking %>
```

## 5. Shortcodes provided by the plugin

* `[cookiedeclaration]` for including in data privacy notice
* `[cookiebot]` to provide a button to edit cookiebot preferences
* `[youtube,id="dieYoutubeId"]` to provide cookiebot consent controlled youtube media

