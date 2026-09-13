class Privmask < Formula
  desc "Mask personal information in text before you share it, on device"
  homepage "https://github.com/snaka/privmask"
  url "https://github.com/snaka/privmask/releases/download/v0.3.1/privmask-0.3.1-macos-universal.tar.gz"
  version "0.3.1"
  sha256 "f1d6bd34ccc023681e2f653caea8b9d5b6f82e603c72f44fbc4b386d0c83d844"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "privmask"
    doc.install "README.md"
  end

  def caveats
    <<~EOS
      Japanese personal names are found only by Apple Intelligence's on-device
      model, which needs macOS 26 with Apple Intelligence enabled. Without it,
      names are not detected at all. privmask says so on stderr whenever the
      model did not run — read those warnings rather than assuming the text was
      masked.

      Register your own terms (customer names, project code names) one per line:
        ~/.config/privmask/terms.txt
    EOS
  end

  test do
    assert_match "privmask #{version}", shell_output("#{bin}/privmask --version")

    # --no-model keeps the test off Apple Intelligence, which is not available
    # on every machine that can run the binary.
    output = pipe_output(
      "#{bin}/privmask --no-model --no-dictionary 2>/dev/null",
      "連絡先は 090-1234-5678、メールは taro@example.co.jp です\n",
    )
    assert_match "[PHONE_1]", output
    assert_match "[EMAIL_1]", output
    refute_match "090-1234-5678", output
  end
end
