cask "vnchkey" do
  version "0.3.9"
  sha256 "d263687dd8394fb247da89a3e640534f79728792b38f2661036ec6d7ac8b6fde"

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
