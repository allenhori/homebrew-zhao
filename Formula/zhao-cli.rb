class ZhaoCli < Formula
  desc "Offline, deterministic breaking-change gate for dbt projects"
  homepage "https://github.com/allenhori/zhao-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.6/zhao-aarch64-apple-darwin.tar.gz"
      sha256 "b4a870284ce90ad326c4a8a5ffbe53305bfc53a47bb1808622659f6b5cae5174"
    end
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.6/zhao-x86_64-apple-darwin.tar.gz"
      sha256 "fafce1796f92e6fa9d28358fda05ce5679f155df88dae78d7e7cb6b87763f16c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.6/zhao-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34a79731b6209685644559f91a97df25e50c8b8eac9ecc8de79480e35d94e4cf"
    end
  end

  def install
    bin.install "zhao"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zhao --version")
  end
end
