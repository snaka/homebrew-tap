cask "bokashi" do
  version "0.4.0"
  sha256 "a0e2c314430006501ad2266d4b8fef88d99e334fd60780d0496ca3b9470d4792"

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
