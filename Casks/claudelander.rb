cask "claudelander" do
  version "2.1.4"

  on_intel do
    sha256 "83382a44f18c980f77da9b81b720826db6d77f452604694a1360891ac73f174c"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "f9c310d7ca34c4002211a7fe17af73f08d6d7dfdc38fe316ff59efd68492887d"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-arm64-mac.zip"
  end

  name "ClaudeLander"
  desc "Cross-platform Claude Code session manager"
  homepage "https://github.com/William-Long-II/claudelander"

  app "ClaudeLander.app"

  zap trash: [
    "~/Library/Application Support/claudelander",
    "~/Library/Preferences/com.claudelander.app.plist",
    "~/Library/Saved Application State/com.claudelander.app.savedState",
  ]
end
