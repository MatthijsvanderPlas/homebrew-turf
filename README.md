# homebrew-turf

Homebrew tap for [Turf](https://matthijsvanderplas.github.io/turf/). Built
artifacts only — the source lives in a private repository, and releases are
published to [turf-releases](https://github.com/MatthijsvanderPlas/turf-releases).

```sh
brew install --cask matthijsvanderplas/turf/turf
```

The app updates itself over Sparkle, so `brew upgrade --cask` intentionally
leaves it alone once installed — reinstall with `brew reinstall --cask
matthijsvanderplas/turf/turf` if you ever need to force a specific version.
