class ApprovalChime < Formula
  desc "Chime while a 1Password approval dialog is waiting for you"
  homepage "https://github.com/snaka/approval-chime"
  url "https://github.com/snaka/approval-chime/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1f9dfd0e191ec71e1f727d0cd125872914514c7a01955622b68f16ddf26ecffc"
  license "MIT"

  depends_on xcode: :build
  depends_on :macos

  def install
    system "swiftc", "-O", "-o", "approval-chime", "Sources/Matcher.swift", "Sources/main.swift"
    bin.install "approval-chime"
  end

  service do
    run opt_bin/"approval-chime"
    keep_alive true
    process_type :interactive
    log_path var/"log/approval-chime.log"
    error_log_path var/"log/approval-chime.log"
  end

  test do
    assert_match "approval-chime #{version}", shell_output("#{bin}/approval-chime --version")
  end
end
