cask "coursework" do
  version :latest
  sha256 :no_check

  url "https://github.com/aspectrr/coursework-structure/releases/download/latest/Coursework_aarch64.app.tar.gz",
      verified: "github.com/aspectrr/coursework-structure"
  name "Coursework"
  desc "Self-paced coursework tracker with timestamped lecture notes"
  homepage "https://github.com/aspectrr/coursework-structure"

  app "Coursework.app"

  # The app is unsigned (no Developer ID). Homebrew 6 removed --no-quarantine
  # and always sets com.apple.quarantine, which makes macOS mark unsigned
  # quarantined apps as "damaged" on launch. Strip it post-install so the
  # single install command works. Remove this once the app is signed+notarized.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Coursework.app"]
  end
end
