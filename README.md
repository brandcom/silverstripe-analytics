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

## 6. Configure Triggers in Matomo Tag Manager

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
