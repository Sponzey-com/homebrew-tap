class Devenv < Formula
  desc "CLI-based development environment manager"
  homepage "https://github.com/Sponzey-com/DevEnv"
  version "0.1.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.31/devenv-0.1.31-aarch64-apple-darwin.tar.gz"
      sha256 "40b63d439ce99b4ed783146c1019fc318c5b4d85121d3640e761464b7d7f5b27"
    end

    on_intel do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.31/devenv-0.1.31-x86_64-apple-darwin.tar.gz"
      sha256 "814350c91d8d3bc146c0d52d22628e3aa92c35ac2081798725c80df5e35669e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.31/devenv-0.1.31-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a386f9c27aa3ae0c713e6c28c83ce218f1f8f45a40a96f0e733b2c49c13d348"
    end

    on_intel do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.31/devenv-0.1.31-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ff3e17c93e7729557c136249a8fd27eea2d1b2ae4367071bd21bddf563f20c4"
    end
  end

  def install
    bin.install "devenv"
    doc.install "USER_GUIDE.md"
  end

  def caveats
    <<~EOS
      Complete the one-time shell setup after installation.

      For zsh:
        devenv init zsh --write
        exec zsh -l

      For Bash:
        devenv init bash --write
        exec bash -l
    EOS
  end

  test do
    assert_match "devenv #{version}", shell_output("#{bin}/devenv --version")
  end
end
