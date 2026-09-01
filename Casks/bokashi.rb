cask "bokashi" do
  version "0.9.1"
  sha256 "a85587bdaef033c1fa0f7fc8816b117708ffd886077652d1ee7d01238568dd9a"

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
