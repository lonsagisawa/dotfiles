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

// Typography for Windows
user_pref("gfx.content.azure.backends", "direct2d1.1,cairo");
user_pref("gfx.direct2d.disabled", false);
user_pref("gfx.direct2d.force-enabled", true);
user_pref("gfx.font_rendering.cleartype.always_use_for_content", true);
user_pref("gfx.font_rendering.cleartype_params.cleartype_level", 100);
user_pref("gfx.font_rendering.cleartype_params.enhanced_contrast", 200);
user_pref("gfx.font_rendering.cleartype_params.gamma", 500);
user_pref("gfx.font_rendering.cleartype_params.pixel_structure", 1);
user_pref("gfx.font_rendering.cleartype_params.rendering_mode", 5);
user_pref("gfx.font_rendering.directwrite.enabled", true);
user_pref("gfx.use_text_smoothing_setting", true);
user_pref("gfx.font_rendering.directwrite.enabled", true);
user_pref("layers.acceleration.disabled", false);
user_pref("layers.acceleration.force-enabled", true);