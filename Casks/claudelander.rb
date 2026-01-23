cask "claudelander" do
  version "2.1.6"

  on_intel do
    sha256 "987cfccefcbef894e111dc282a211dbe4e6f33ac7273ba7ad8e943e8069dcee2"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "f3a8edaac4a76ca334ca1a05856ea9ebf0be9029e145b31e2f5091ac4f4b2236"
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
