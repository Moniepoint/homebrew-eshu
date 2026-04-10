class Eshu < Formula
  desc "eshu CLI for an improved developer experience"
  homepage "https://github.com/Moniepoint/eshu"
  license "Proprietary"

  version "0.5.5-alpha"

  on_macos do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-arm64.tar.gz"
      sha256 "b8a180d1803e00287fcafb8c9a0b64f67c86e659cf33fcff95bbf69d256fa9d4"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.darwin-amd64.tar.gz"
      sha256 "2a2724d95154d706283a285417988fe47f0e4fb7f2690b3d125d3a3dcfd4573c"
    end
  end

  on_linux do
    on_arm do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-arm64.tar.gz"
      sha256 "a68b583a1b39679c581d5e7192697c32992a7361a5f890b0ec5a90ba6f3503f3"
    end

    on_intel do
      url "https://proxy-function-241114592952.europe-west1.run.app/download/v#{version}/eshu-#{version}.linux-amd64.tar.gz"
      sha256 "7158b159ae2d1fbfdddf642b3c5e67d03c6ac4778f986df97934acf7b3b6dc3c"
    end
  end

  def install
    bin.install "eshu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eshu version")
  end
end
