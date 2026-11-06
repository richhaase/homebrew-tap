cask "bigboard" do
  version "3.1.0"
  sha256 "a3f9d4598f6b9a8de4eb6a007458e59bc099e4154216fe912be58de45bf0cb4a"

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
