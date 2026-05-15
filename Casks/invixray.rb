cask "invixray" do
  version "0.1.1"
  sha256 "3d116f5805defed7713d3e980ec2cb297e9cc169b7ed41d326d513d6fd0e0901"

  url "https://github.com/snaka/invixray/releases/download/v#{version}/Invixray-#{version}.dmg"
  name "Invixray"
  desc "Menu bar app that flags invisible Unicode used in LLM prompt injection"
  homepage "https://github.com/snaka/invixray"

  depends_on macos: ">= :sonoma"

  app "Invixray.app"

  zap trash: [
    "~/Library/Caches/com.snaka.invixray",
    "~/Library/Preferences/com.snaka.invixray.plist",
  ]
end
