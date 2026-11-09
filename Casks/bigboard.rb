cask "bigboard" do
  version "3.2.1"
  sha256 "4bdc185f44661c3bd885d874f3c9884eceb2ec6e01eb781292b7db29b228a035"

  url "https://github.com/richhaase/bigboard/releases/download/v#{version}/Bigboard_#{version}_darwin_universal.zip"
  name "Bigboard"
  desc "Explore work areas, contributors, and commit evidence across GitHub repositories"
  homepage "https://github.com/richhaase/bigboard"

  depends_on macos: :tahoe
  depends_on formula: "gh"

  app "Bigboard.app"
  binary "#{appdir}/Bigboard.app/Contents/MacOS/Bigboard", target: "bigboard"

  caveats <<~EOS
    Bigboard requires Git for repository history (Homebrew or Xcode Git).
    Install Git if it is missing before opening Bigboard.
    Run `gh auth login` before opening Bigboard; it uses the active GitHub CLI account.
    It reads history from GitHub clones in folders you choose and only fetches
    their remote-tracking default branch.
    Run `bigboard open` to open the app, or `bigboard` for terminal commands.
  EOS

  zap trash: [
    "~/.cache/bigboard",
    "~/.config/bigboard",
  ]
end
