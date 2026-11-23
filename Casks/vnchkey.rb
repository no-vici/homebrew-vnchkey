cask "vnchkey" do
  version "0.4.0"
  sha256 "65af3508c74bbbf7abe5ad36f20639fe8752ee754d4b717ac9d49dfada0171da"

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
