class Fullsend < Formula
  desc "Fully autonomous agentic development for GitHub-hosted organizations"
  homepage "https://github.com/fullsend-ai/fullsend"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_arm64.tar.gz"
      sha256 "f5417a5b9723eee5b80369aea197f16bca2cbf2900f163a770f268a7c594c3b4"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_amd64.tar.gz"
      sha256 "3c12e44aedea516f093a2045cedb21de697e02822a20aa9eca7b13a4513bfbdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_arm64.tar.gz"
      sha256 "8d7ab240754e03a9eb3f26d1a677ba3209932a8a79dd82efb1d6c1dc6d094f74"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_amd64.tar.gz"
      sha256 "6a2bf586ffc364664f4099e1453a1dcaf8c0d96673865da6e19e5918a48aaacb"
    end
  end

  def install
    bin.install "fullsend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fullsend version")
  end
end
