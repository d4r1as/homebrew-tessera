cask "tessera" do
  version "1.1"
  sha256 "e3d032853cc6d36d881ff86f54bdd786eba231a0d1118546dd4388223564803b"

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
