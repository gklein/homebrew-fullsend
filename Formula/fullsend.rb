class Fullsend < Formula
  desc "Fully autonomous agentic development for GitHub-hosted organizations"
  homepage "https://github.com/fullsend-ai/fullsend"
  version "0.22.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_arm64.tar.gz"
      sha256 "17905b40c1fc50c2d5648e955b7f2be2f0010b13d293297a2ca290a26f623600"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_darwin_amd64.tar.gz"
      sha256 "be4634ade9de73b5ac418c166b6b8e303d863a7e9690eaf1556287d9bf02652d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_arm64.tar.gz"
      sha256 "60b4d2beafebadce0ae589b7f44b9c5320e43a1d38d88717dbe1dc596340bbd8"
    end
    on_intel do
      url "https://github.com/fullsend-ai/fullsend/releases/download/v#{version}/fullsend_#{version}_linux_amd64.tar.gz"
      sha256 "95e0d8dff7f3d4479e53ee2fe3846859659fa3e27b5f9dda041d7044b383a090"
    end
  end

  def install
    bin.install "fullsend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fullsend version")
  end
end
