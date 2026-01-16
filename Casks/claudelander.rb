cask "claudelander" do
  version "2.0.3"

  on_intel do
    sha256 "37ddf8a607323c42d8af49bbc99d2120e26a15b373edea952c5fb5937bc82070"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "221abc8d7f4e3e4dc8c7f1373bd9307d6353c3212b85a9ff1f9ff2f4992d0da1"
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
