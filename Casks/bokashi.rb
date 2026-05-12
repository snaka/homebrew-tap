cask "bokashi" do
  version "0.5.0"
  sha256 "4a04e6999ca3348b6c8e12f92381df011673782a0ae1639cc7cbc2829a83a8c3"

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
