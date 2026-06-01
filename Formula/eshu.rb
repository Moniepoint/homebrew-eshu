class Eshu < Formula
  desc "eshu CLI for an improved developer experience"
  homepage "https://github.com/Moniepoint/eshu"
  license "Proprietary"

  version "0.11.0-alpha"

  on_macos do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-arm64.tar.gz"
      sha256 "47b3ca34c2df8ec9f26414ab14eef7db519ec460d90f220a14eb2fea0a1a64c3"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-amd64.tar.gz"
      sha256 "093847738a94d734e2b9039dc41387223c34417a8f8ab6e581662479afedb911"
    end
  end

  on_linux do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-arm64.tar.gz"
      sha256 "a353206f9e6862afc43c9a958435b470d825e5aaea673961b6f022bab6797cf8"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-amd64.tar.gz"
      sha256 "493a94732d1151438fd7f033e45ebc3792789e284dc4de0d368ad7d36aa47b03"
    end
  end

  def install
    bin.install "eshu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eshu version")
  end
end
