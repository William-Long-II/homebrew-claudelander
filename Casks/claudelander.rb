cask "claudelander" do
  version "2.2.1"

  on_intel do
    sha256 "5f7989cc99cbc28543c99772e67e0368278a7997c2f0eba840c63a96f83029a7"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "fc0f2cac3e5c7fdf98870bf21d9327f2d9f72fd9d0f6e5559cee9ec86b64fbbb"
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
