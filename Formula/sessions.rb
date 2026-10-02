class Sessions < Formula
  desc "Terminal UI to browse and resume saved Claude Code sessions"
  homepage "https://github.com/JoyoMDEV/session-tui"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.0/sessions-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "082aba51f1615974f17110b16b6ada820c2bfc02d142a016c391ffaedc39e2b8"
    end
    on_intel do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.0/sessions-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a4516ba05e90d6180a1e449e284e0f16570d2fa978cd64e93d1e5c0dd6167364"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.0/sessions-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50aac69693f9018782c429e7ac544e32e960f9c6d274d0e4fbca02a27de7497c"
    end
    on_intel do
      url "https://github.com/JoyoMDEV/session-tui/releases/download/v0.1.0/sessions-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a511ba7eae092c08896a11a5c7e2c4fb5bf8dd6f57b02d9a7fba1deb0185f264"
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
