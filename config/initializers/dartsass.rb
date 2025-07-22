# Configure Dart Sass to silence Bootstrap deprecation warnings
# Based on: https://github.com/twbs/bootstrap/issues/40962

# Silence deprecation warnings from Bootstrap's outdated Sass
Rails.application.config.dartsass.build_options |= [
  "--quiet-deps",
  "--silence-deprecation=global-builtin",
  "--silence-deprecation=color-functions",
  "--silence-deprecation=import"
]

Rails.application.config.dartsass.builds = {
  "application.scss"  => "application.css"
}
