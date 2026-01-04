cask "claudelander" do
  version "1.3.3"

  on_intel do
    sha256 "83d58ac3325b7fe47749682f5d4be22fb33cc89c5b4d457bd64b3482af709743"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "d5082c85ac5432978b92cedd9c2372c1874aeece66a2fa8ad33f34dac6ed681e"
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
