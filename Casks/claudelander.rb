cask "claudelander" do
  version "2.2.2"

  on_intel do
    sha256 "726ca4ab87df7bf8eee8bcf1da323d78fb8adce300e6dc716c6b550d206ffdd1"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "47f8bc594eb6d1ae20543fe4408ef4f415e8cba49309662f95a7f4da94ec2c7d"
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
