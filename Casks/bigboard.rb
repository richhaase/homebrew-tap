cask "bigboard" do
  version "2.4.0"
  sha256 "82005303064b5d71c9dd144064519dec1ddac20716315feceaa9178734602be9"

  url "https://github.com/richhaase/bigboard/releases/download/v#{version}/Bigboard_#{version}_darwin_universal.zip"
  name "Bigboard"
  desc "Explore work areas, contributors, and commit evidence across GitHub repositories"
  homepage "https://github.com/richhaase/bigboard"

  depends_on macos: :tahoe

  app "Bigboard.app"

  caveats <<~EOS
    Bigboard requires Git for repository history (Homebrew or Xcode Git).
    Install Git if it is missing before opening Bigboard.
    Open Bigboard and choose Sign in with GitHub to connect your repositories.
  EOS
end
