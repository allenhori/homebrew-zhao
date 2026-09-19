class ZhaoCli < Formula
  desc "Offline, deterministic breaking-change gate for dbt projects"
  homepage "https://github.com/allenhori/zhao-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.4/zhao-aarch64-apple-darwin.tar.gz"
      sha256 "402642a34e825f15b0700bf4a154fbb2ff2d09dc835b2efd1258a23563c5000c"
    end
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.4/zhao-x86_64-apple-darwin.tar.gz"
      sha256 "0dd1fb8d4b64e99032567fb9f924371810c23998a42ca27ef102d64247b557dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/allenhori/zhao-cli/releases/download/v0.5.4/zhao-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ccfafa4309a0ed666cb29a896a89ae6923173b36971adcc96d1a2f958690789"
    end
  end

  def install
    bin.install "zhao"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zhao --version")
  end
end
