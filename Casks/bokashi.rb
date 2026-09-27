cask "bokashi" do
  version "0.11.0"
  sha256 "02750e249a88903fd17bc9b6a75176d7a66c868a7e84daa1c8d2c6c5d1bd5281"

  url "https://github.com/snaka/Bokashi/releases/download/v#{version}/Bokashi-#{version}.dmg"
  name "Bokashi"
  desc "Privacy-aware screenshot tool for macOS"
  homepage "https://github.com/snaka/Bokashi"

  depends_on macos: :tahoe

  app "Bokashi.app"

  zap trash: [
    "~/Library/Preferences/com.snaka.Bokashi.plist",
    "~/Library/Caches/com.snaka.Bokashi",
    "~/Library/Group Containers/7JNK6BM249.com.snaka.Bokashi",
  ]
end
