cask "turf" do
  version "1.2.5"
  sha256 "eb43d3bf62cbffb7ef7697a8576db9513b6600da2750bcef361badf2dcb6dbbf"

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
