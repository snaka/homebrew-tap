cask "bokashi" do
  version "0.13.0"
  sha256 "ee336d7a80079edeff8f9614383267a8ba8a336ea2146835c08e3f8ce7603bb2"

  url "https://github.com/snaka/Bokashi/releases/download/v#{version}/Bokashi-#{version}.dmg"
  name "Bokashi"
  desc "Privacy-aware screenshot tool for macOS"
  homepage "https://github.com/snaka/Bokashi"

  depends_on macos: :tahoe
  # Brings the Japanese name model, which the app does not bundle.
  depends_on formula: "snaka/tap/privmask"

  app "Bokashi.app"

  zap trash: [
    "~/Library/Preferences/com.snaka.Bokashi.plist",
    "~/Library/Caches/com.snaka.Bokashi",
    "~/Library/Group Containers/7JNK6BM249.com.snaka.Bokashi",
  ]
end
