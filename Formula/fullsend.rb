class Fullsend < Formula
  desc "Fully autonomous agentic development for GitHub-hosted organizations"
  homepage "https://github.com/fullsend-ai/fullsend"
  version "0.47.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_arm64.tar.gz"
      sha256 "7a67456e1eef62bffeeb35c97bc020a03ef78bb44ec746572a16b91320903d44"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_amd64.tar.gz"
      sha256 "6fc1fb1bdc2512ad65c75a11b49fd53ff1867ce743c1433a19bad04d397fe703"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_arm64.tar.gz"
      sha256 "e7d1414e191a5f2fec26060c4a651e2e70af37b2572e33324b0714565e117ae8"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_amd64.tar.gz"
      sha256 "bc5d61f39201758d69ba879dcc0727d556b40c2a59e3d84b47d2dfc04f68d293"
    end
  end

  def install
    bin.install "fullsend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fullsend version")
  end
end
