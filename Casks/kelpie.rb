cask "kelpie" do
  version "0.1.4"
  sha256 "d409bb0a2f9c32a23f9bf1640b980f8fe5e22a120a7462873625c25cbf84e476"

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
