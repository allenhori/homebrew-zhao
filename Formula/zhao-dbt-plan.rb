class ZhaoDbtPlan < Formula
  desc "Static microbatch cascading time-window planner for dbt"
  homepage "https://github.com/allenhori/zhao-dbt-plan"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/allenhori/zhao-dbt-plan/releases/download/v0.2.1/zhao-dbt-plan-aarch64-apple-darwin.tar.gz"
      sha256 "507180e3a65aadc44948a4c8beca979c1f5610d2061f13ee946dcc496b5a18c2"
    end
    on_intel do
      url "https://github.com/allenhori/zhao-dbt-plan/releases/download/v0.2.1/zhao-dbt-plan-x86_64-apple-darwin.tar.gz"
      sha256 "180c9da4f82f5e832958edca7cb3a97fe3556aba735c4c961cf0640b00de0e53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/allenhori/zhao-dbt-plan/releases/download/v0.2.1/zhao-dbt-plan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a3c470277c34117bede9d7103f82eb3a2eab1fea3184afd118cef64da767ac5"
    end
  end

  def install
    bin.install "zhao-dbt-plan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zhao-dbt-plan --version")
  end
end
