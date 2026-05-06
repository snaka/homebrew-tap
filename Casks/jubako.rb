cask "jubako" do
  version "0.1.0"
  sha256 "55526d3f3e00bd38d0a001bc34d9abb06d74d256b07700785f59de50b88f4363"

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
