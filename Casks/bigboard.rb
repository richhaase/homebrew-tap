cask "bigboard" do
  version "2.2.0"
  sha256 "eaf8ed0cf110652b7398129c0c17539328444865e79e467718f70b897eaf59ba"

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
