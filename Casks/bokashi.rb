cask "bokashi" do
  version "0.9.0"
  sha256 "f9addcb27582733bf79e3848b44481a2de49286dbb29f5b5c0e3f6fe9078f71a"

  url "https://github.com/snaka/Bokashi/releases/download/v#{version}/Bokashi-#{version}.dmg"
  name "Bokashi"
  desc "Privacy-aware screenshot tool for macOS"
  homepage "https://github.com/snaka/Bokashi"

  depends_on macos: :tahoe

  app "Bokashi.app"

  zap trash: [
    "~/Library/Preferences/com.snaka.Bokashi.plist",
    "~/Library/Caches/com.snaka.Bokashi",
  ]
end
