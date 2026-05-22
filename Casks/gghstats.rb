# Initial cask for v0.6.3. Future updates: GoReleaser homebrew_casks on gghstats release (when HOMEBREW_TAP_TOKEN is set).
cask "gghstats" do
  name "gghstats"
  desc "Self-hosted GitHub traffic dashboard and CLI with SQLite storage"
  homepage "https://github.com/hrodrig/gghstats"
  version "0.6.3"

  livecheck do
    skip "Auto-generated on release when HOMEBREW_TAP_TOKEN is configured."
  end

  binary "gghstats"

  on_macos do
    on_intel do
      url "https://github.com/hrodrig/gghstats/releases/download/v#{version}/gghstats_#{version}_darwin_amd64.tar.gz",
        verified: "github.com/hrodrig/gghstats/"
      sha256 "448b9ad35439def15b489ed489d401d105b18bd6ef84182cc2b572d47ca82ddf"
    end
    on_arm do
      url "https://github.com/hrodrig/gghstats/releases/download/v#{version}/gghstats_#{version}_darwin_arm64.tar.gz",
        verified: "github.com/hrodrig/gghstats/"
      sha256 "8f1c56034f122daf823751c11bda6ee28426b2808c4646d3a9bc4c122031784a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hrodrig/gghstats/releases/download/v#{version}/gghstats_#{version}_linux_amd64.tar.gz",
        verified: "github.com/hrodrig/gghstats/"
      sha256 "afa765747041f216eac8818197facb2c229381479118f0c04f503462069f1534"
    end
    on_arm do
      url "https://github.com/hrodrig/gghstats/releases/download/v#{version}/gghstats_#{version}_linux_arm64.tar.gz",
        verified: "github.com/hrodrig/gghstats/"
      sha256 "71ea934cbda9ccf8ac1f10cbf5bd7619f08735ea752e7f11bb2add21febdb53e"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/gghstats"]
    end
  end

  # No zap stanza required
end
