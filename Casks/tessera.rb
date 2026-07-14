cask "tessera" do
  version "1.3"
  sha256 "7a405bcc20fc57449e54bd3c2cdb4e83ea5e4921b317de0c998882e51b46827d"

  url "https://github.com/d4r1as/homebrew-tessera/releases/download/v#{version}/Tessera-#{version}.zip"
  name "Tessera"
  desc "Menu-bar watchdog that alerts when your AI tools drift off their expected model"
  homepage "https://github.com/d4r1as/homebrew-tessera"

  depends_on macos: :sonoma # macOS 14+ (minimum)

  app "Tessera.app"

  uninstall quit: "das.casa.Tessera"

  zap trash: [
    "~/Library/Preferences/das.casa.Tessera.plist",
  ]

  caveats <<~EOS
    Grant Accessibility and Notifications when the setup wizard asks.
  EOS
end
