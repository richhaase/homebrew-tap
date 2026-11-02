cask "bigboard" do
  version "2.1.0"
  sha256 "cf5d463ffbd9be5469cf1f51cca11c1621922ab624bfffb3e90785c2fff3b2f4"

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
