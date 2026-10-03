class Privmask < Formula
  desc "Mask personal information in text before you share it, on device"
  homepage "https://github.com/snaka/privmask"
  url "https://github.com/snaka/privmask/releases/download/v0.4.0/privmask-0.4.0-macos-universal.tar.gz"
  version "0.4.0"
  sha256 "42c7685a83e7a5c0099d95f36b5a21ef1ab42e949ecc479b34085e56f8ea90c6"
  license "MIT"

  depends_on macos: :ventura

  # The NER model that finds Japanese personal names. It has a release of its
  # own, because it is trained locally, not in CI; privmask's release workflow
  # pins the same sha256. Change both together.
  resource "ner" do
    url "https://github.com/snaka/privmask/releases/download/ner-model-1/privmask-ner-1.tar.gz"
    sha256 "9c68188f141e0fe46473fbd21fadb5ddc652fc75a73055f22e432800732f5f88"
  end

  def install
    bin.install "privmask"
    doc.install "README.md"
    resource("ner").stage { (share/"privmask/ner").install Dir["*"] }
  end

  def caveats
    <<~EOS
      Japanese personal names are found by a trained NER model installed with
      privmask, on every supported macOS. On macOS 26 with Apple Intelligence
      enabled, the on-device language model adds to it. privmask says on stderr
      whenever a layer did not run — read those warnings rather than assuming
      the text was masked.

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
