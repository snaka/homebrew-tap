cask "jubako" do
  version "0.3.0"
  sha256 "afae79957b68e4c1d9f952bbe27086d6cedc2c9989b27f8d8315c2f9e040de95"

  url "https://github.com/snaka/jubako/releases/download/v#{version}/Jubako-#{version}.dmg"
  name "Jubako"
  desc "macOS-native disk analyzer with a Bento-grid UI"
  homepage "https://github.com/snaka/jubako"

  app "Jubako.app"

  zap trash: [
    "~/Library/Application Support/Jubako",
    "~/Library/Caches/com.snaka.jubako",
    "~/Library/Preferences/com.snaka.jubako.plist",
  ]
end
