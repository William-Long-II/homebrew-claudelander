cask "claudelander" do
  version "3.1.1"

  on_intel do
    sha256 "775573c3d6f1b3d3dc97667deadd1df2653a691f46ed3bb233b02275bc8748cf"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "75ad7ba1121419e8bdc8e82e2750eae946eebf7caf0d2d50eab6fdd92cb66cb0"
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
