cask "kelpie" do
  version "0.1.10"
  sha256 "f5a0c3a675428acd45585b54a4798a15dc01463ad45a07aebb8dc570695db6a1"

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
