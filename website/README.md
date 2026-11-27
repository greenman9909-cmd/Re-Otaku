# RE:OTAKU download website

Static HTML, CSS and JavaScript. No build step or runtime framework.

Serve locally with `python -m http.server 8132` from this folder. APK downloads link to the official GitHub release. `config.js` contains public browser configuration only, including a Supabase publishable key; database policies control access. Never add service-role credentials here.

The site includes English/Spanish switching, a keyboard-accessible screenshot viewer, FAQ disclosure controls, aggregate download counts and public reviews. Local visits do not submit download events. Geist is distributed under the included SIL Open Font License.

Production also preserves the existing APK, update-feed and legacy OTA files, which are maintained separately. Deploying this folder alone does not include those compatibility files.
