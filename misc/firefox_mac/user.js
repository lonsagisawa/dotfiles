// Disable Telemetry
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry.ping.endpoint", "");
user_pref("datareporting.healthreport.uploadEnabled", false);

// Disable Screenshot
user_pref("extensions.screenshots.disabled", true);

// Do not close window when closed last tab in window
user_pref("browser.tabs.closeWindowWithLastTab", false);

// Enable userChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("svg.context-properties.content.enabled", true);

// font size
user_pref("font.size.monospace.x-western", 16);

// fix Japanese font fallback
user_pref("font.preload-names-list", "Hiragino Sans, Hiragino Mincho ProN");