class Eshu < Formula
  desc "eshu CLI for an improved developer experience"
  homepage "https://github.com/Moniepoint/eshu"
  license "Proprietary"

  version "0.9.1-alpha"

  on_macos do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-arm64.tar.gz"
      sha256 "e447ecdee488a5c468ae0873720a46e7116593566397c1494c319593ee2941b2"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-amd64.tar.gz"
      sha256 "fd1dff46fb460fb5e62ad98fe2fa34fc5d5ae1929b1297fb597327b22ce4e95d"
    end
  end

  on_linux do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-arm64.tar.gz"
      sha256 "e8eb03bb031886d56d9518bf36a886841f876b04923f624dc059942b227dcff6"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-amd64.tar.gz"
      sha256 "3713da412db778e2fa9fad34f3d66a215eda048de1c258d725613ad8afea1cef"
    end
  end

  def install
    bin.install "eshu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eshu version")
  end
end
