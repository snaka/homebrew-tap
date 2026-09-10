cask "kelpie" do
  version "0.1.9"
  sha256 "fac8ac78691c26650fad3825caf95139c733697cf50c2f90336fd9bd9f79428d"

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
