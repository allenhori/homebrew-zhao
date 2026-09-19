class ZhaoDbtPlan < Formula
  desc "Static microbatch cascading time-window planner for dbt"
  homepage "https://github.com/allenhori/zhao-dbt-plan"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/allenhori/zhao-dbt-plan/releases/download/v0.2.0/zhao-dbt-plan-aarch64-apple-darwin.tar.gz"
      sha256 "8c5a3131b89e09a231af81df5657337854837f02661af1d569a082a9d12f566d"
    end
    on_intel do
      url "https://github.com/allenhori/zhao-dbt-plan/releases/download/v0.2.0/zhao-dbt-plan-x86_64-apple-darwin.tar.gz"
      sha256 "3845b6a9043c3010684bd8aad59176748bad7c303768c81106a4583673853883"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/allenhori/zhao-dbt-plan/releases/download/v0.2.0/zhao-dbt-plan-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c3187274baf268b4227adc77b55c1cd615b9ab5e4b2554b887051675201a630"
    end
  end

  def install
    bin.install "zhao-dbt-plan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zhao-dbt-plan --version")
  end
end
