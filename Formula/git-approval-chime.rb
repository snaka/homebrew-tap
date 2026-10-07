class GitApprovalChime < Formula
  desc "Play a sound while git waits for you to approve an SSH key use"
  homepage "https://github.com/snaka/git-approval-chime"
  url "https://github.com/snaka/git-approval-chime/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "398e557a8cc16937d0d47bfafce318230fa6dcd2f82ab917942b006f458f7043"
  license "MIT"

  depends_on :macos

  def install
    bin.install "git-approval-chime"
  end

  def caveats
    <<~EOS
      Point git's signer and ssh command at it (and undo with `uninstall`):
        git approval-chime install
    EOS
  end

  test do
    assert_match "git-approval-chime #{version}", shell_output("#{bin}/git-approval-chime --version")
  end
end
