cask "claudelander" do
  version "1.7.1"

  on_intel do
    sha256 "921050e680b00b87ee2e67041b4cda4d6a0fd0d3b9f2a00274f8f8d8e1bba65e"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "ae5e2b106ba9fddc68d039a6cde343edc0dd319c58af295a99e96014ff8e7045"
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
