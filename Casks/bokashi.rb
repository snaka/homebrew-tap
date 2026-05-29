cask "bokashi" do
  version "0.8.0"
  sha256 "2c42789cb3e8a3f917e0cf80f7e1533520ad49186bdeb199127d01e320a19018"

  url "https://github.com/snaka/Bokashi/releases/download/v#{version}/Bokashi-#{version}.dmg"
  name "Bokashi"
  desc "Privacy-aware screenshot tool for macOS"
  homepage "https://github.com/snaka/Bokashi"

  app "Bokashi.app"

  zap trash: [
    "~/Library/Preferences/com.snaka.Bokashi.plist",
    "~/Library/Caches/com.snaka.Bokashi",
  ]
end
