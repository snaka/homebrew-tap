# homebrew-tap

snaka's personal Homebrew tap.

## Casks

| Cask | Description | Source |
|---|---|---|
| `bokashi` | Privacy-aware screenshot tool for macOS | [snaka/Bokashi](https://github.com/snaka/Bokashi) |
| `invixray` | Menu bar app that flags invisible Unicode used in LLM prompt injection | [snaka/invixray](https://github.com/snaka/invixray) |
| `jubako` | macOS-native disk analyzer with a Bento-grid UI | [snaka/jubako](https://github.com/snaka/jubako) |

## Install

```bash
brew install --cask snaka/tap/bokashi
brew install --cask snaka/tap/invixray
brew install --cask snaka/tap/jubako
```

(`brew` reads `snaka/tap/<cask>` as: tap `snaka/tap` → fetch repo
`snaka/homebrew-tap` → install `<cask>` from `Casks/<cask>.rb`.)
