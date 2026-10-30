cask "bigboard" do
  version "1.2.0"
  sha256 "5cfea52bd62426c98bcc78cc953f36a9203cea3ed77a105a38f574e80a1faa7f"

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
