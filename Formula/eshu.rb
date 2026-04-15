class Eshu < Formula
  desc "eshu CLI for an improved developer experience"
  homepage "https://github.com/Moniepoint/eshu"
  license "Proprietary"

  version "0.6.1-alpha"

  on_macos do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-arm64.tar.gz"
      sha256 "01057feddcd2f98d4d89ca4458ea55fdb8be2aef3f439c500217277f6eb82439"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-amd64.tar.gz"
      sha256 "34667b143b3e14b605d9d9b05787228ce6a9b55758b2fcf81e6df1471388f445"
    end
  end

  on_linux do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-arm64.tar.gz"
      sha256 "ab0043f7f30dfe8121bb17a122c21c3ba27fc25f5fbe6568ab80dd5cd0de586d"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-amd64.tar.gz"
      sha256 "46c0920c3f4a70a559bb7b806d9236bae62510c2ab606007316e2d3ce1cf7453"
    end
  end

  def install
    bin.install "eshu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eshu version")
  end
end
