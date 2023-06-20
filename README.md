# silverstripe-analytics

## Installation

### 1. Installiere das Analytics-Plugin mit Composer

```
php74 composer.phar require jbennecker/silverstripe-analytics
```

### 2. Führe dev/build?flush aus

```
php74 framework/cli-script.php dev/build
```

### 3. Gib die Tracking-IDs in das CMS ein

Gehe zu Admin > Einstellungen > Tracking und gib die Cookiebot-ID und Tagmanager-IDs ein. Du kannst Google und/oder Matomo TagManager verwenden.

> WICHTIG:  
> Bitte konfiguriere Matomo TagManager so, dass "Cookies deaktivieren" und "Tracker bündeln" aktiviert ist. Siehe Bookstack.  
> Cookiebot ist im manuellen Modus enthalten.

### 4. Füge den Tracking-Code in dein Template ein

Bearbeite die Datei `app/templates/Page.ss` und importiere den Tracking-Code am Anfang deines `<head>`.

```
<% include Tracking %>
```

## Shortcodes, die vom Plugin bereitgestellt werden

* `[cookiedeclaration]` zum Einbinden in die Datenschutzerklärung
* `[cookiebot]` um einen Button zum Bearbeiten der Cookiebot-Präferenzen bereitzustellen
* `[youtube,id="dieYoutubeId"]` zum Bereitstellen von YouTube-Medien, die von der Cookiebot-Zustimmung gesteuert werden

## Konfiguriere Auslöser im Matomo Tag Manager

This step is only needed if custom Tags in Matomo need to honor Cookiebot consent modes, for example Facebook Pixel etc.

To honor the visitor's consent, you need to define the logic that controls the behavior of cookie-setting tags on your website.

To do this you need to create the following Triggers, to be used in your Matomo configuration:
1. Name: **Cookie Consent Preferences**  
   Event Name: `cookie_consent_preferences`
2. Name: **Cookie Consent Statistics**  
   Event Name: `cookie_consent_statistics`
3. Name: **Cookie Consent Marketing**  
   Event Name: `cookie_consent_marketing`

To create the Triggers, repeat these steps for each of the Cookiebot triggers:

* Click the "Triggers" menu item and click "+ CREATE NEW TRIGGER"
* Choose "Custom Event" under "Choose a type of trigger to continue"
* Assign a name and the matching event from the list above
* Click the "CREATE NEW TRIGGER" button to save the trigger

[also see Cookiebot doc for defining Custom JavaScript variables to use as a condition for existing triggers ](https://support.cookiebot.com/hc/en-us/articles/360017539960#controlling_cookies)

Once we write a Matomo trigger plugin we can elimate this step

## 7. Use custom Matomo Consent Triggers for Tags setting Cookies or tracking

Tags which set cookies within one of these three categories (review the scan report if you are in doubt) must only be
triggered when the user has consented to the relevant category.

To achieve this, assign the appropriate Cookie Consent Trigger on each cookie-setting tag, for example "Cookie Consent
Statistics" for your Matomo Analytics tag.
