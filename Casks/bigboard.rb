cask "bigboard" do
  version "1.3.0"
  sha256 "8ddade8f2145ba60fb994ff97f75f933da42496c9a9c098fa7fcd9d2c6164d1d"

  url "https://github.com/richhaase/bigboard/releases/download/v#{version}/Bigboard_#{version}_darwin_universal.zip"
  name "Bigboard"
  desc "Explore work areas, contributors, and commit evidence across GitHub repositories"
  homepage "https://github.com/richhaase/bigboard"

  depends_on formula: "git"
  depends_on macos: :ventura

  app "Bigboard.app"

  caveats <<~EOS
    Open Bigboard and choose Sign in with GitHub to connect your repositories.
  EOS
end
