cask "vnchkey" do
  version "0.3.7"
  sha256 "b186807a1976e10d66a64f93b7afb37c32f857d3f0b3c8a1c68d1fc17be794a7"

  url "https://github.com/no-vici/fcitx5-vnchkey/releases/download/v#{version}/vnchKey-#{version}.dmg"
  name "vnchKey"
  desc "Bộ gõ tiếng Việt thông minh cho macOS"
  homepage "https://github.com/no-vici/fcitx5-vnchkey"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Tự động gỡ cờ cách ly (Quarantine) của macOS Gatekeeper khi cài qua Homebrew
  app "vnchKey.app"

  zap trash: [
    "~/Library/Preferences/com.vnchkey.macos.plist",
    "~/Library/Application Support/vnchKey",
  ]
end
