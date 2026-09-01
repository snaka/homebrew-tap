cask "jubako" do
  version "0.3.1"
  sha256 "d85523bcec89298ae795f92094f863737ac9147bcc0b509ad530e2f422896f6e"

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
