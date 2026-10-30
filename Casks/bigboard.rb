cask "bigboard" do
  version "1.0.1"
  sha256 "0407a650fc3474708d8c29e5b20d9e7367afe174411818cebfc3c50730f7da71"

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
