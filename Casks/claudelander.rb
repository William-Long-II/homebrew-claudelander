cask "claudelander" do
  version "2.3.0"

  on_intel do
    sha256 "56edd40f54c8019deb0907b79f0c59a0c4c3eea1efe76a5b8ac8a804cfd9b27c"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "c7036cfaf0c7aa3f72cd14dea97a5d31db37b07c10942a97ce8bba6db9e4dcf1"
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
