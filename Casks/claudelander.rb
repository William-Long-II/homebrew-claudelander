cask "claudelander" do
  version "3.0.0"

  on_intel do
    sha256 "8c938e5a6944c6e99ccdcc6521cdf50fbd24f8bc15fd6753fff98788223c25d0"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "b0ea3c039b329f76cb4657ab3e2272cc5c02c06223b01a5f5859a8d92750b1e9"
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
