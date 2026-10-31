cask "bigboard" do
  version "1.2.2"
  sha256 "230b7e4b43769f8eb67a1281c4810bb2d0872a619871a644824b007c25ec6b5d"

  url "https://github.com/richhaase/bigboard/releases/download/v#{version}/Bigboard_#{version}_darwin_universal.zip"
  name "Bigboard"
  desc "Explore work areas, contributors, and commit evidence across GitHub repositories"
  homepage "https://github.com/richhaase/bigboard"

  depends_on formula: "gh"
  depends_on formula: "git"
  depends_on macos: :ventura

  app "Bigboard.app"

  caveats <<~EOS
    Live GitHub data requires authentication. Run gh auth login before opening Bigboard.
  EOS
end
