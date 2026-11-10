cask "claude-usage" do
  version "0.1.12"
  sha256 "96476dc0accb8ac6b92eefd03950addd3bb0533929155c4550b4bbedf29d143b"

  url "https://github.com/israelio/claude-usage-widget/releases/download/v#{version}/ClaudeUsage-#{version}.dmg"
  name "Claude Usage"
  desc "Menu bar app and widgets showing Claude Code usage, limits and costs"
  homepage "https://github.com/israelio/claude-usage-widget"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Claude Usage.app"

  caveats <<~EOS
    Start Claude Usage with:
      open -a "Claude Usage"
    or open it from the Applications folder or Launchpad. It lives in the menu bar: click the usage label to open the panel.
  EOS

  zap trash: [
    "~/Library/Application Support/ClaudeUsageWidget",
    "~/Library/Group Containers/*.com.ohad.claudeusagewidget",
    "~/Library/Preferences/com.ohad.ClaudeUsageWidget.plist",
  ]
end
