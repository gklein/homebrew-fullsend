class Fullsend < Formula
  desc "Fully autonomous agentic development for GitHub-hosted organizations"
  homepage "https://github.com/fullsend-ai/fullsend"
  version "0.9.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_arm64.tar.gz"
      sha256 "2fea2639dd0f1f05ed417518f683c7cc7dd7d35830c1a2f685af8c4716c78d44"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_amd64.tar.gz"
      sha256 "ed9644e3f6203bad9f4eb9a47ff7e9512cc1f9b12ad71abec5b1708957b3c338"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_arm64.tar.gz"
      sha256 "00a0121b01782c58f12b872c7e14e4038b6ffee0b9b1766026b14b908d7f09a0"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_amd64.tar.gz"
      sha256 "ebf95d2eb14d8c3687d5b0419f8a6c73833633d2833dca01d5f8e6c1cbd55742"
    end
  end

  def install
    bin.install "fullsend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fullsend version")
  end
end
