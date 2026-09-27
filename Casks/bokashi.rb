cask "bokashi" do
  version "0.12.0"
  sha256 "7113375b74e7ae4adf9f0c4b18399a7c2449f942f1baa84c8d4f88155968efba"

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
