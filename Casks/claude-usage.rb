cask "claude-usage" do
  version "0.1.11"
  sha256 "f432a2d598ea90c77e09ea14c82830d00cdc0f45d5d03181c6fa3ce2d6068503"

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

  # Start the app right after installing so the menu bar item appears (no-op if it can't be opened, e.g. over SSH).
  postflight do
    system_command "/usr/bin/open",
                   args:         ["-a", "#{appdir}/Claude Usage.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/ClaudeUsageWidget",
    "~/Library/Group Containers/*.com.ohad.claudeusagewidget",
    "~/Library/Preferences/com.ohad.ClaudeUsageWidget.plist",
  ]
end
