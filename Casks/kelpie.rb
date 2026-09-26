cask "kelpie" do
  version "0.1.13"
  sha256 "c1f5430c3a128770e2f074344f263e987abee70b73fd692876bc088441d3a95e"

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
