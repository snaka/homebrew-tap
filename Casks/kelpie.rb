cask "kelpie" do
  version "0.1.3"
  sha256 "535a04c2a5d3cd5db1526fee7e651c3a161ef0fd7f34f6a3252dfc05af44bca6"

  url "https://github.com/snaka/kelpie/releases/download/v#{version}/Kelpie-#{version}.dmg"
  name "Kelpie"
  desc "Menu bar app showing live herdr agent status"
  homepage "https://github.com/snaka/kelpie"

  depends_on macos: :sonoma

  app "Kelpie.app"

  zap trash: [
    "~/Library/Caches/com.snaka.kelpie",
    "~/Library/Preferences/com.snaka.kelpie.plist",
  ]
end
