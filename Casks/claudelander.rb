cask "claudelander" do
  version "1.3.1"

  on_intel do
    sha256 "8201fe32bc21f356273fd4148eb641575a99db192183c3cbef20b34cc7af3a14"
    url "https://github.com/William-Long-II/claudelander/releases/download/v#{version}/ClaudeLander-#{version}-mac.zip"
  end

  on_arm do
    sha256 "e7c8c3c687c39b090fb7bc23b0760961dc0501fe929d208e13a4510b9c73e760"
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
