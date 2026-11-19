cask "vnchkey" do
  version "0.3.7"
  sha256 "108c99800df8b3c8a6f4acfcc07e7da885b99db5baa2ee9d96a476b01956fed4"

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
