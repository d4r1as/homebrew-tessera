cask "tessera" do
  version "1.2"
  sha256 "bfe5ede25e5109420dc6e86c3c9aa2820a6d461e1dd7565b3beb07586a134bf4"

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
    Tessera isn't notarized yet, so macOS blocks it on first launch. Approve it
    once via System Settings → Privacy & Security → "Open Anyway", or run:
      xattr -dr com.apple.quarantine "#{appdir}/Tessera.app"

    Then grant Accessibility and Notifications when the setup wizard asks.
  EOS
end
