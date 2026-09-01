cask "invixray" do
  version "0.1.2"
  sha256 "445ffdd4a4d72f01aee2264f65e7117c40cbbb59e9edf0e6a5440c77ad13de4f"

  url "https://github.com/snaka/invixray/releases/download/v#{version}/Invixray-#{version}.dmg"
  name "Invixray"
  desc "Menu bar app that flags invisible Unicode used in LLM prompt injection"
  homepage "https://github.com/snaka/invixray"

  depends_on macos: :sonoma

  app "Invixray.app"

  zap trash: [
    "~/Library/Caches/com.snaka.invixray",
    "~/Library/Preferences/com.snaka.invixray.plist",
  ]
end
