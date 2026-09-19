class Zhao < Formula
  desc "Deterministic, offline change-review and CI gate for data transformation projects."
  homepage "https://github.com/allenhori/zhao-cli"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.2/zhao-aarch64-apple-darwin.tar.gz"
      sha256 "7df5ddc21bd768ebe74fd330d2af10d1b0feae9fc2908e4c8856f2831cf08d95"
    end
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.2/zhao-x86_64-apple-darwin.tar.gz"
      sha256 "26a69bde1b4dcb3b81b0626e2c9b6a5773cd99322b1e5576710fc38e2b788fd4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.2/zhao-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e44ab86d710364108410caf4f398d61f1b7848e4c8fef7553cc79857028bd6ac"
    end
  end

  def install
    bin.install "zhao"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zhao --version")
  end
end
