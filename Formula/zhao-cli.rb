class ZhaoCli < Formula
  desc "Offline, deterministic breaking-change gate for dbt projects"
  homepage "https://github.com/allenhori/zhao-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.5/zhao-aarch64-apple-darwin.tar.gz"
      sha256 "06f4ce1a60027b5b99d0b23574dde6eacd36102ed57fa7e4523b0fee44d46dee"
    end
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.5/zhao-x86_64-apple-darwin.tar.gz"
      sha256 "545a3e3b481e55b046dd0d78c27f497f6da1351ccfe9d50618860b2a190f1931"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.5/zhao-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a475ce2551630429a1b246012b9c8f186a459d6d3bcbf2e48f5b18bc6ffa22e"
    end
  end

  def install
    bin.install "zhao"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zhao --version")
  end
end
