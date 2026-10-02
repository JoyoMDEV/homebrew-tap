class Sessions < Formula
  desc "Terminal UI to browse and resume saved Claude Code sessions"
  homepage "https://github.com/JoyoMDEV/session-tui"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.1/sessions-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "d0cd4e7783ff72c489b527c988d24ec46140383dd398098a9f28b41f29d918bf"
    end
    on_intel do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.1/sessions-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "293ec40c93205f87047952552a26088c71acd61f764a8b28b4cadf829d37e331"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.1/sessions-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "674905cbbdf08abe82d884b3d3d926ed9c8d1b760f5ba23d3426dbbc10fbe536"
    end
    on_intel do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.1/sessions-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6360733b48513f5f559a0b8996a0b879bebf2c42401ffea07581da431a445ce7"
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
