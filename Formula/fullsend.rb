class Fullsend < Formula
  desc "Fully autonomous agentic development for GitHub-hosted organizations"
  homepage "https://github.com/fullsend-ai/fullsend"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_arm64.tar.gz"
      sha256 "60b2829bac451b3c3ab1c0645c64e92d9c4a8586f17fe0785ed7659802130fdb"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_amd64.tar.gz"
      sha256 "0f23c15a897abcb13f80ec3367a1c0fa79715310a11252fbfd4ce77721477287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_arm64.tar.gz"
      sha256 "3c49b724e0060646d6ba2f3ce2c3a749017989049fa5e82430135652d108030f"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_amd64.tar.gz"
      sha256 "3fed1b33c9f5d10f4a0bb2f6eb0efbd617f366697edfec429601914fc924d68f"
    end
  end

  def install
    bin.install "fullsend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fullsend version")
  end
end
