cask "bigboard" do
  version "1.0.0"
  sha256 "bf11afccaaa6c0554d32524e29e268b6ec7006fc0dc5e6675a7d32953ff7fbac"

  url "https://github.com/richhaase/bigboard/releases/download/v#{version}/Bigboard_#{version}_darwin_universal.zip"
  name "Bigboard"
  desc "Explore work areas, contributors, and commit evidence across GitHub repositories"
  homepage "https://github.com/richhaase/bigboard"

  depends_on formula: "gh"
  depends_on formula: "git"
  depends_on macos: ">= :ventura"

  app "Bigboard.app"

  caveats <<~EOS
    Live GitHub data requires authentication. Run gh auth login before opening Bigboard.
  EOS
end
