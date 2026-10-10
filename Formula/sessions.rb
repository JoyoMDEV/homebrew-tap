class Sessions < Formula
  desc "Terminal UI to browse and resume saved Claude Code sessions"
  homepage "https://github.com/JoyoMDEV/session-tui"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.2.0/sessions-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "60d967d2f495125fc05268012520d0674c785fef179aa42a22c925a1897afb9a"
    end
    on_intel do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.2.0/sessions-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "8a0af61b70fbf1b1f484504c3d78926e645d5df8e49d3ff99069833113d43601"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.2.0/sessions-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ffeb2a4b8ec5983ef967c793dad9df7dd542d221d5895082c1c2e9b804874e8"
    end
    on_intel do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.2.0/sessions-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96359aca40c93566bde931ba0aaea395d559767136c67c8b6cea2d14592bf070"
    end
  end

  def install
    bin.install "sessions"
  end

  def caveats
    <<~EOS
      Add the hook to Claude Code and register your existing sessions:
        sessions setup
        sessions import
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sessions --version")
  end
end
