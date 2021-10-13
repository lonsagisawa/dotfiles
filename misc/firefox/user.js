// Do not close window when closed last tab in window
user_pref("browser.tabs.closeWindowWithLastTab", false);

// Enable userChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("svg.context-properties.content.enabled", true);

// font size
user_pref("font.size.monospace.x-western", 16);

// Compact UI
user_pref("browser.uidensity", 1);

// Based on: https://github.com/pyllyukko/user.js/tree/relaxed

// PREF: Disable DOM timing API
user_pref("dom.enable_performance",				false);
// PREF: Make sure the User Timing API does not provide a new high resolution timestamp
user_pref("dom.enable_user_timing",				false);
// PREF: Disable Location-Aware Browsing (geolocation)
user_pref("geo.enabled",					false);
// PREF: When geolocation is enabled, use Mozilla geolocation service instead of Google
user_pref("geo.wifi.uri", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
// PREF: When geolocation is enabled, don't log geolocation requests to the console
user_pref("geo.wifi.logging.enabled", false);
// PREF: Disable raw TCP socket support (mozTCPSocket)
user_pref("dom.mozTCPSocket.enabled",				false);
// PREF: Disable leaking network/browser connection information via Javascript
user_pref("dom.netinfo.enabled",				false);
// PREF: Disable network API (Firefox < 32)
user_pref("dom.network.enabled",				false);
// PREF: Disable WebRTC entirely to prevent leaking internal IP addresses (Firefox < 42)
user_pref("media.peerconnection.enabled",			false);
// PREF: Don't reveal your internal IP when WebRTC is enabled (Firefox >= 42)
user_pref("media.peerconnection.ice.no_host",			true); // Firefox >= 52
// PREF: Disable WebRTC getUserMedia, screen sharing, audio capture, video capture
user_pref("media.navigator.enabled",				false);
user_pref("media.navigator.video.enabled",			false);
user_pref("media.getusermedia.screensharing.enabled",		false);
user_pref("media.getusermedia.audiocapture.enabled",		false);
// PREF: Disable battery API (Firefox < 52)
user_pref("dom.battery.enabled",				false);
// PREF: Disable telephony API
user_pref("dom.telephony.enabled",				false);
// PREF: Disable "beacon" asynchronous HTTP transfers (used for analytics)
user_pref("beacon.enabled",					false);
// PREF: Disable speech recognition
user_pref("media.webspeech.recognition.enable",			false);
// PREF: Disable speech synthesis
user_pref("media.webspeech.synth.enabled",			false);
// PREF: Disable sensor API
user_pref("device.sensors.enabled",				false);
// PREF: Disable pinging URIs specified in HTML <a> ping= attributes
user_pref("browser.send_pings",					false);
// PREF: When browser pings are enabled, only allow pinging the same host as the origin page
user_pref("browser.send_pings.require_same_host",		true);
// PREF: Disable gamepad API to prevent USB device enumeration
user_pref("dom.gamepad.enabled",				false);
// PREF: Disable virtual reality devices APIs
user_pref("dom.vr.enabled",					false);
// PREF: Disable vibrator API
user_pref("dom.vibrator.enabled",           false);
// PREF: Disable resource timing API
user_pref("dom.enable_resource_timing",				false);
// PREF: Disable Archive API (Firefox < 54)
user_pref("dom.archivereader.enabled",				false);
// PREF: Disable webGL
user_pref("webgl.disabled",					true);
// PREF: When webGL is enabled, use the minimum capability mode
user_pref("webgl.min_capability_mode",				true);
// PREF: When webGL is enabled, disable webGL extensions
user_pref("webgl.disable-extensions",				true);
// PREF: When webGL is enabled, force enabling it even when layer acceleration is not supported
user_pref("webgl.disable-fail-if-major-performance-caveat",	true);
// PREF: When webGL is enabled, do not expose information about the graphics driver
user_pref("webgl.enable-debug-renderer-info",			false);
// PREF: Spoof dual-core CPU
user_pref("dom.maxHardwareConcurrency",				2);
// PREF: Disable face detection
user_pref("camera.control.face_detection.enabled",		false);
// PREF: Don't use Mozilla-provided location-specific search engines
user_pref("browser.search.geoSpecificDefaults",			false);
// PREF: Do not automatically send selection to clipboard on some Linux platforms
user_pref("clipboard.autocopy",					false);
// PREF: Don't trim HTTP off of URLs in the address bar.
user_pref("browser.urlbar.trimURLs",				false);
// PREF: Don't try to guess domain names when entering an invalid domain name in URL bar
user_pref("browser.fixup.alternate.enabled",			false);
// PREF: When browser.fixup.alternate.enabled is enabled, strip password from 'user:password@...' URLs
user_pref("browser.fixup.hide_user_pass", true);
// PREF: Don't monitor OS online/offline connection state
user_pref("network.manage-offline-status",			false);
// PREF: Enforce Mixed Active Content Blocking
user_pref("security.mixed_content.block_active_content",	true);
// PREF: Disable JAR from opening Unsafe File Types
user_pref("network.jar.open-unsafe-types",			false);
// CIS 2.7.4 Disable Scripting of Plugins by JavaScript
user_pref("security.xpconnect.plugin.unrestricted",		false);
// PREF: Set File URI Origin Policy
user_pref("security.fileuri.strict_origin_policy",		true);
// PREF: Disable Displaying Javascript in History URLs
user_pref("browser.urlbar.filter.javascript",			true);
// PREF: Disable asm.js
user_pref("javascript.options.asmjs",				false);
// PREF: Disable video stats to reduce fingerprinting threat
user_pref("media.video_stats.enabled",				false);
// PREF: Don't reveal build ID
user_pref("general.buildID.override",				"20100101");
user_pref("browser.startup.homepage_override.buildID",		"20100101");
// PREF: Enable only whitelisted URL protocol handlers
user_pref("network.protocol-handler.warn-external-default",	true);
user_pref("network.protocol-handler.external.http",		false);
user_pref("network.protocol-handler.external.https",		false);
user_pref("network.protocol-handler.external.javascript",	false);
user_pref("network.protocol-handler.external.moz-extension",	false);
user_pref("network.protocol-handler.external.ftp",		false);
user_pref("network.protocol-handler.external.file",		false);
user_pref("network.protocol-handler.external.about",		false);
user_pref("network.protocol-handler.external.chrome",		false);
user_pref("network.protocol-handler.external.blob",		false);
user_pref("network.protocol-handler.external.data",		false);
user_pref("network.protocol-handler.expose-all",		false);
user_pref("network.protocol-handler.expose.http",		true);
user_pref("network.protocol-handler.expose.https",		true);
user_pref("network.protocol-handler.expose.javascript",		true);
user_pref("network.protocol-handler.expose.moz-extension",	true);
user_pref("network.protocol-handler.expose.ftp",		true);
user_pref("network.protocol-handler.expose.file",		true);
user_pref("network.protocol-handler.expose.about",		true);
user_pref("network.protocol-handler.expose.chrome",		true);
user_pref("network.protocol-handler.expose.blob",		true);
user_pref("network.protocol-handler.expose.data",		true);
// PREF: Ensure you have a security delay when installing add-ons (milliseconds)
user_pref("security.dialog_enable_delay",			1000);
// PREF: Opt-out of add-on metadata updates
user_pref("extensions.getAddons.cache.enabled",			false);
// PREF: Opt-out of themes (Persona) updates
user_pref("lightweightThemes.update.enabled",			false);
// PREF: Disable Java NPAPI plugin
user_pref("plugin.state.java",					0);
// PREF: Updates addons automatically
user_pref("extensions.update.enabled",				true);
// PREF: Enable add-on and certificate blocklists (OneCRL) from Mozilla
user_pref("extensions.blocklist.enabled",			true);
user_pref("services.blocklist.update_enabled",			true);
// PREF: Decrease system information leakage to Mozilla blocklist update servers
// https://trac.torproject.org/projects/tor/ticket/16931
user_pref("extensions.blocklist.url",				"https://blocklist.addons.mozilla.org/blocklist/3/%APP_ID%/%APP_VERSION%/");
// PREF: Disable system add-on updates (hidden & always-enabled add-ons from Mozilla)
user_pref("extensions.systemAddon.update.enabled",		false);
// PREF: Disable Extension recommendations (Firefox >= 65)
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr",	false);
// PREF: Disable WebIDE
user_pref("devtools.webide.enabled",				false);
user_pref("devtools.webide.autoinstallADBHelper",		false);
user_pref("devtools.webide.autoinstallFxdtAdapters",		false);
// PREF: Disable remote debugging
// user_pref("devtools.debugger.remote-enabled",			false);
// user_pref("devtools.chrome.enabled",				false);
// user_pref("devtools.debugger.force-local",			true);

// PREF: Disable Mozilla telemetry/experiments
user_pref("toolkit.telemetry.enabled",				false);
user_pref("toolkit.telemetry.unified",				false);
user_pref("toolkit.telemetry.archive.enabled",			false);
user_pref("experiments.supported",				false);
user_pref("experiments.enabled",				false);
user_pref("experiments.manifest.uri",				"");
// PREF: Disallow Necko to do A/B testing
user_pref("network.allow-experiments",				false);
// PREF: Disable sending Firefox crash reports to Mozilla servers
user_pref("breakpad.reportURL",					"");
// PREF: Disable sending reports of tab crashes to Mozilla (about:tabcrashed), don't nag user about unsent crash reports
user_pref("browser.tabs.crashReporting.sendReport",		false);
user_pref("browser.crashReports.unsubmittedCheck.enabled",	false);
// PREF: Disable FlyWeb (discovery of LAN/proximity IoT devices that expose a Web interface)
user_pref("dom.flyweb.enabled",					false);
// PREF: Disable the UITour backend
user_pref("browser.uitour.enabled",				false);
// PREF: Enable Firefox Tracking Protection
user_pref("privacy.trackingprotection.enabled",			true);
user_pref("privacy.trackingprotection.pbmode.enabled",		true);
// PREF: Enable contextual identity Containers feature (Firefox >= 52)
user_pref("privacy.userContext.enabled",			true);
// PREF: disable mozAddonManager Web API [FF57+]
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true);
user_pref("extensions.webextensions.restrictedDomains", "");
// PREF: disable showing about:blank/maximized window as soon as possible during startup [FF60+]
user_pref("browser.startup.blankWindow", false);
// PREF: Disable collection/sending of the health report (healthreport.sqlite*)
user_pref("datareporting.healthreport.uploadEnabled",		false);
user_pref("datareporting.healthreport.service.enabled",		false);
user_pref("datareporting.policy.dataSubmissionEnabled",		false);
// "Allow Firefox to make personalized extension recommendations"
user_pref("browser.discovery.enabled",				false);
// PREF: Disable Shield/Heartbeat/Normandy (Mozilla user rating telemetry)
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("extensions.shield-recipe-client.enabled",		false);
user_pref("app.shield.optoutstudies.enabled",			false);
// PREF: Disable Firefox Hello metrics collection
user_pref("loop.logDomains",					false);
// PREF: Enable Auto Update (disabled)
user_pref("app.update.auto",					true);
// PREF: Enforce checking for Firefox updates
user_pref("app.update.enabled",                 true);
// PREF: Enable blocking reported web forgeries
user_pref("browser.safebrowsing.enabled",			true); // Firefox < 50
user_pref("browser.safebrowsing.phishing.enabled",		true); // firefox >= 50
// PREF: Enable blocking reported attack sites
user_pref("browser.safebrowsing.malware.enabled",		true);
// PREF: Disable querying Google Application Reputation database for downloaded binary files
user_pref("browser.safebrowsing.downloads.remote.enabled",	false);
// PREF: Disable "Recommended by Pocket" in Firefox Quantum
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories",	false);
// PREF: Disable prefetching of <link rel="next"> URLs
user_pref("network.prefetch-next",				false);
// PREF: Disable DNS prefetching
user_pref("network.dns.disablePrefetch",			true);
user_pref("network.dns.disablePrefetchFromHTTPS",		true);
// PREF: Disable the predictive service (Necko)
user_pref("network.predictor.enabled",				false);
// PREF: Reject .onion hostnames before passing the to DNS
user_pref("network.dns.blockDotOnion",				true);
// PREF: Disable search suggestions in the search bar
user_pref("browser.search.suggest.enabled",			false);
// PREF: Disable "Show search suggestions in location bar results"
user_pref("browser.urlbar.suggest.searches",			false);
// PREF: When using the location bar, don't suggest URLs from browsing history
user_pref("browser.urlbar.suggest.history",			false);
// PREF: Disable SSDP
user_pref("browser.casting.enabled",				false);
// PREF: Disable automatic downloading of OpenH264 codec
user_pref("media.gmp-gmpopenh264.enabled",			false);
user_pref("media.gmp-manager.url",				"");
// PREF: Disable speculative pre-connections
user_pref("network.http.speculative-parallel-limit",		0);
// PREF: Disable downloading homepage snippets/messages from Mozilla
user_pref("browser.aboutHomeSnippets.updateUrl",		"");
// PREF: Never check updates for search engines
user_pref("browser.search.update",				false);
// PREF: Disable automatic captive portal detection (Firefox >= 52.0)
user_pref("network.captive-portal-service.enabled",		false);
// PREF: Disallow NTLMv1
user_pref("network.negotiate-auth.allow-insecure-ntlm-v1",	false);
// PREF: Enable CSP 1.1 script-nonce directive support
user_pref("security.csp.experimentalEnabled",			true);
// PREF: Enable Content Security Policy (CSP)
user_pref("security.csp.enable",				true);
// PREF: Enable Subresource Integrity
user_pref("security.sri.enable",				true);
// PREF: Accept Only 1st Party Cookies
user_pref("network.cookie.cookieBehavior",			1);
// PREF: Enable first-party isolation
user_pref("privacy.firstparty.isolate",				true);
// PREF: Make sure that third-party cookies (if enabled) never persist beyond the session.
user_pref("network.cookie.thirdparty.sessionOnly",		true);
// PREF: Do not download URLs for the offline cache
user_pref("browser.cache.offline.enable",			false);
// PREF: Disable disk cache
user_pref("browser.cache.disk.enable",				false);
// PREF: Disable download history
user_pref("browser.download.manager.retention",			0);
// PREF: Disable password manager (disabled)
user_pref("signon.rememberSignons",				false);
// PREF: Disable form autofill, don't save information entered in web page forms and the Search Bar
user_pref("browser.formfill.enable",				false);
// PREF: The cookie's lifetime is supplied by the server
user_pref("network.cookie.lifetimePolicy",			0);
// PREF: Require manual intervention to autofill known username/passwords sign-in forms
user_pref("signon.autofillForms",				false);
// PREF: Disable formless login capture
user_pref("signon.formlessCapture.enabled",			false);
// PREF: Show in-content login form warning UI for insecure login fields
user_pref("security.insecure_field_warning.contextual.enabled", true);
// PREF: Delete Search and Form History
user_pref("browser.formfill.expire_days",			0);
// PREF: Clear SSL Form Session Data
user_pref("browser.sessionstore.privacy_level",			2);
// PREF: Delete temporary files on exit
user_pref("browser.helperApps.deleteTempFileOnExit",		true);
// PREF: Do not create screenshots of visited pages (relates to the "new tab page" feature)
user_pref("browser.pagethumbnails.capturing_disabled",		true);
// PREF: Don't fetch and permanently store favicons for Windows .URL shortcuts created by drag and drop
user_pref("browser.shell.shortcutFavicons",					false);
// PREF: Disable right-click menu manipulation via JavaScript (disabled)
user_pref("dom.event.contextmenu.enabled",		false);
// PREF: Disable Snippets
user_pref("browser.newtabpage.activity-stream.feeds.snippets",	false);
// PREF: Disable Activity Stream
user_pref("browser.newtabpage.activity-stream.enabled",		false);
// PREF: Enable Auto Notification of Outdated Plugins (Firefox < 50)
user_pref("plugins.update.notifyUser",				true);
// PREF: Force Punycode for Internationalized Domain Names
user_pref("network.IDN_show_punycode",				true);
// PREF: Disable CSS :visited selectors
user_pref("layout.css.visited_links_enabled",			false);
// PREF: Do not check if Firefox is the default browser
user_pref("browser.shell.checkDefaultBrowser",			false);
// PREF: Display a notification bar when websites offer data for offline use
user_pref("browser.offline-apps.notify",			true);
// PREF: Enable HSTS preload list (pre-set HSTS sites list provided by Mozilla)
user_pref("network.stricttransportsecurity.preloadlist",	true);
// PREF: Enable Online Certificate Status Protocol
user_pref("security.OCSP.enabled",				1);
// PREF: Enable OCSP Stapling support
user_pref("security.ssl.enable_ocsp_stapling",			true);
// PREF: Enable OCSP Must-Staple support (Firefox >= 45)
user_pref("security.ssl.enable_ocsp_must_staple",		true);
// PREF: Require a valid OCSP response for OCSP enabled certificates
user_pref("security.OCSP.require",				true);
// PREF: Disable TLS Session Tickets
user_pref("security.ssl.disable_session_identifiers",		true);
// PREF: Only allow TLS 1.[0-3]
// http://kb.mozillazine.org/Security.tls.version.*
// 1 = TLS 1.0 is the minimum required / maximum supported encryption protocol. (This is the current default for the maximum supported version.)
// 2 = TLS 1.1 is the minimum required / maximum supported encryption protocol.
// 3 = TLS 1.2 is the minimum required / maximum supported encryption protocol.
// 4 = TLS 1.3 is the minimum required / maximum supported encryption protocol.
user_pref("security.tls.version.min",				1);
user_pref("security.tls.version.max",				4);
// PREF: Disable insecure TLS version fallback
user_pref("security.tls.version.fallback-limit",		3);
// PREF: Enforce Public Key Pinning
user_pref("security.cert_pinning.enforcement_level",		2);
// PREF: Disallow SHA-1
user_pref("security.pki.sha1_enforcement_level",		1);
// PREF: Warn the user when server doesn't support RFC 5746 ("safe" renegotiation)
user_pref("security.ssl.treat_unsafe_negotiation_as_broken",	true);
// PREF: Disable automatic reporting of TLS connection errors
user_pref("security.ssl.errorReporting.automatic",		false);
// PREF: Pre-populate the current URL but do not pre-fetch the certificate in the "Add Security Exception" dialog
user_pref("browser.ssl_override_behavior",			1);
// PREF: Encrypted SNI (when TRR is enabled)
user_pref("network.security.esni.enabled",			true);
// PREF: Disable null ciphers
user_pref("security.ssl3.rsa_null_sha",				false);
user_pref("security.ssl3.rsa_null_md5",				false);
user_pref("security.ssl3.ecdhe_rsa_null_sha",			false);
user_pref("security.ssl3.ecdhe_ecdsa_null_sha",			false);
user_pref("security.ssl3.ecdh_rsa_null_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_null_sha",			false);
// PREF: Disable SEED cipher
user_pref("security.ssl3.rsa_seed_sha",				false);
// PREF: Disable 40/56/128-bit ciphers
// 40-bit ciphers
user_pref("security.ssl3.rsa_rc4_40_md5",			false);
user_pref("security.ssl3.rsa_rc2_40_md5",			false);
// 56-bit ciphers
user_pref("security.ssl3.rsa_1024_rc4_56_sha",			false);
// 128-bit ciphers
user_pref("security.ssl3.rsa_camellia_128_sha",			false);
user_pref("security.ssl3.ecdhe_rsa_aes_128_sha",		false);
user_pref("security.ssl3.ecdhe_ecdsa_aes_128_sha",		false);
user_pref("security.ssl3.ecdh_rsa_aes_128_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_aes_128_sha",		false);
user_pref("security.ssl3.dhe_rsa_camellia_128_sha",		false);
user_pref("security.ssl3.dhe_rsa_aes_128_sha",			false);
// PREF: Disable RC4
user_pref("security.ssl3.ecdh_ecdsa_rc4_128_sha",		false);
user_pref("security.ssl3.ecdh_rsa_rc4_128_sha",			false);
user_pref("security.ssl3.ecdhe_ecdsa_rc4_128_sha",		false);
user_pref("security.ssl3.ecdhe_rsa_rc4_128_sha",		false);
user_pref("security.ssl3.rsa_rc4_128_md5",			false);
user_pref("security.ssl3.rsa_rc4_128_sha",			false);
user_pref("security.tls.unrestricted_rc4_fallback",		false);
// PREF: Disable 3DES (effective key size is < 128)
user_pref("security.ssl3.dhe_dss_des_ede3_sha",			false);
user_pref("security.ssl3.dhe_rsa_des_ede3_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_des_ede3_sha",		false);
user_pref("security.ssl3.ecdh_rsa_des_ede3_sha",		false);
user_pref("security.ssl3.ecdhe_ecdsa_des_ede3_sha",		false);
user_pref("security.ssl3.ecdhe_rsa_des_ede3_sha",		false);
user_pref("security.ssl3.rsa_des_ede3_sha",			false);
user_pref("security.ssl3.rsa_fips_des_ede3_sha",		false);
// PREF: Disable ciphers with ECDH (non-ephemeral)
user_pref("security.ssl3.ecdh_rsa_aes_256_sha",			false);
user_pref("security.ssl3.ecdh_ecdsa_aes_256_sha",		false);
// PREF: Disable 256 bits ciphers without PFS
user_pref("security.ssl3.rsa_camellia_256_sha",			false);
// PREF: Enable GCM ciphers (TLSv1.2 only)
user_pref("security.ssl3.ecdhe_ecdsa_aes_128_gcm_sha256",	true); // 0xc02b
user_pref("security.ssl3.ecdhe_rsa_aes_128_gcm_sha256",		true); // 0xc02f
// PREF: Enable ChaCha20 and Poly1305 (Firefox >= 47)
user_pref("security.ssl3.ecdhe_ecdsa_chacha20_poly1305_sha256",	true);
user_pref("security.ssl3.ecdhe_rsa_chacha20_poly1305_sha256",	true);
// PREF: Disable ciphers susceptible to the logjam attack
user_pref("security.ssl3.dhe_rsa_camellia_256_sha",		false);
user_pref("security.ssl3.dhe_rsa_aes_256_sha",			false);
// PREF: Disable ciphers with DSA (max 1024 bits)
user_pref("security.ssl3.dhe_dss_aes_128_sha",			false);
user_pref("security.ssl3.dhe_dss_aes_256_sha",			false);
user_pref("security.ssl3.dhe_dss_camellia_128_sha",		false);
user_pref("security.ssl3.dhe_dss_camellia_256_sha",		false);
