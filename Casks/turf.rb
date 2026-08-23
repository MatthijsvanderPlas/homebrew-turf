cask "turf" do
  version "1.6.0"
  sha256 "bd8f1034b324d604d619be8d3d4bf1311df5ac362c6bd1cfdcd3d08d5c2fe7c8"

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
