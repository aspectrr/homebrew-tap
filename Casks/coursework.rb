cask "coursework" do
  version :latest
  sha256 :no_check

  url "https://github.com/aspectrr/coursework-structure/releases/download/latest/Coursework_aarch64.app.tar.gz",
      verified: "github.com/aspectrr/coursework-structure"
  name "Coursework"
  desc "Self-paced coursework tracker with timestamped lecture notes"
  homepage "https://github.com/aspectrr/coursework-structure"

  app "Coursework.app"

  # NOTE: the app is unsigned (no Developer ID), and Homebrew 6 removed
  # --no-quarantine and always sets com.apple.quarantine — macOS then marks
  # the app "damaged" on launch. Homebrew ignores postflight xattr strips,
  # so after installing run:
  #   xattr -dr com.apple.quarantine /Applications/Coursework.app
  # Remove this note once the app is signed + notarized.
end
