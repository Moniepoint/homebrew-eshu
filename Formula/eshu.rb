class Eshu < Formula
  desc "eshu CLI for an improved developer experience"
  homepage "https://github.com/Moniepoint/eshu"
  license "Proprietary"

  version "0.5.1-alpha"

  on_macos do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-arm64.tar.gz"
      sha256 "6638759856005a1d9a613fe3575ebc0cc3e7e833fe5275c433484a8de28fc100"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-amd64.tar.gz"
      sha256 "d55adf4eea05f48868fe15b1ef7371d3acda775c04d2b49ee30deb4ed9fd703e"
    end
  end

  on_linux do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-arm64.tar.gz"
      sha256 "ddc084e7d8ec19fd2b307f9bab14cd5daeb1d08af94e9fd9055327efdbd723cb"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-amd64.tar.gz"
      sha256 "eec5c82f28c04598a696096aae94d79759d598cbffc8b3e7811d274abf0a79ff"
    end
  end

  def install
    bin.install "eshu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eshu version")
  end
end