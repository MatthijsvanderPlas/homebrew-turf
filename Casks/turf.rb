cask "turf" do
  version "1.11.0"
  sha256 "ccde1322d250febb69f37a3c9daa6e3c5feb3cdef43705138c8478a143f5b3ce"

  url "https://github.com/MatthijsvanderPlas/turf-releases/releases/download/v#{version}/Turf-#{version}.zip"
  name "Turf"
  desc "Run many Claude sessions on one repo, side by side"
  homepage "https://github.com/MatthijsvanderPlas/turf-releases"

  # The app updates itself over Sparkle — see the private turf repo's README
  # "cutting a release" — so `brew upgrade --cask` intentionally does not fight it.
  auto_updates true
  depends_on macos: :sonoma

  app "Turf.app"

  zap trash: [
    "~/Library/Application Support/dev.matthijsvanderplas.Turf",
    "~/Library/Caches/dev.matthijsvanderplas.Turf",
    "~/Library/Preferences/dev.matthijsvanderplas.Turf.plist",
    "~/Library/Saved Application State/dev.matthijsvanderplas.Turf.savedState",
  ]
end
