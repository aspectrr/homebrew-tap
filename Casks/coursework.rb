cask "coursework" do
  version :latest
  sha256 :no_check

  url "https://github.com/aspectrr/coursework-structure/releases/download/latest/Coursework_aarch64.app.tar.gz",
      verified: "github.com/aspectrr/coursework-structure"
  name "Coursework"
  desc "Self-paced coursework tracker with timestamped lecture notes"
  homepage "https://github.com/aspectrr/coursework-structure"

  # The app is unsigned; brew's default quarantine xattr makes macOS block
  # unsigned downloaded apps ("damaged"). --no-quarantine skips that.
  # Install with: brew install --cask --no-quarantine aspectrr/tap/coursework

  app "Coursework.app"
end
