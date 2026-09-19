class ZhaoCli < Formula
  desc "Offline, deterministic breaking-change gate for dbt projects"
  homepage "https://github.com/allenhori/zhao-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.3/zhao-aarch64-apple-darwin.tar.gz"
      sha256 "af43e15d4d5864628478eeb43249a20e6423cd92216fc0e797bbc75a872fb9b8"
    end
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.3/zhao-x86_64-apple-darwin.tar.gz"
      sha256 "97936997923d608abf657aead3eef4a0ddd4154ba0010d9a4c22e787a15cca05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.3/zhao-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d57c79b91e97f0e5bea3f58b10c72d7c79cd7016eec21e9e869f1153cb384921"
    end
  end

  def install
    bin.install "zhao"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zhao --version")
  end
end
