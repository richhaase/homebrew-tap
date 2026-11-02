cask "bigboard" do
  version "2.0.2"
  sha256 "2b8382021803aa3829adb3ddde3eef789781e6c4c35181c952574b28bd738b62"

  url "https://github.com/richhaase/bigboard/releases/download/v#{version}/Bigboard_#{version}_darwin_universal.zip"
  name "Bigboard"
  desc "Explore work areas, contributors, and commit evidence across GitHub repositories"
  homepage "https://github.com/richhaase/bigboard"

  depends_on macos: :tahoe

  app "Bigboard.app"

  caveats <<~EOS
    Bigboard requires Apple Command Line Tools for repository history.
    If they are missing, run xcode-select --install before opening Bigboard.
    Open Bigboard and choose Sign in with GitHub to connect your repositories.
  EOS
end
