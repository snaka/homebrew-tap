cask "jubako" do
  version "0.2.0"
  sha256 "d05f4e73edf3f55ef69c309a283ab786f07f7973d182b30c03ad8416da85318e"

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
