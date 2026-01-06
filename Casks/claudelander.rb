cask "claudelander" do
  version "1.5.1"

  on_intel do
    sha256 "5909b99446b8551d1a3c6da5a34ba01b12259893b59a0af5c4e91f79a1385e7b"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "2c7925d233b692732b6dae8c9cacbeceb0d7bdc5c5ca0ce6ab93bc6f2fbeacb7"
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
