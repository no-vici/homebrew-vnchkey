cask "vnchkey" do
  version "0.4.0"
  sha256 "a8d759b30aa28f857e8604f20985f96fc2d434160a3f8db27b235e28a8a9221e"

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
