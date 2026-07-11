# Homebrew cask for Tessera — lives in the tap repo (d4r1as/homebrew-tessera)
# under Casks/tessera.rb. Install with:
#   brew install --cask d4r1as/tessera/tessera
# On each release, bump `version` + `sha256` (build the zip with scripts/release.sh
# or the manual Release build, then `shasum -a 256 Tessera-<version>.zip`).
cask "tessera" do
  version "1.0"
  sha256 "d275f92005fe66d87fce1c740467b7b6dc3a681a1d56e7fe6f4a59b194d262aa"

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
