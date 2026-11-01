cask "bigboard" do
  version "2.0.1"
  sha256 "e2ce496bb80f4f17513895233ad70efa2d6e15969b89e4b37bbbe4831e74ae0e"

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
