cask "claudelander" do
  version "3.2.0"

  on_intel do
    sha256 "104727cc186eb96b7284acc199476686a770c73ceedf582317e75d80a501d86b"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "b194227079a96346249473317eba99e929cb598ac670095a806e625cba8281f1"
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
