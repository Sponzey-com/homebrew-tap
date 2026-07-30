class Devenv < Formula
  desc "CLI-based development environment manager"
  homepage "https://github.com/Sponzey-com/DevEnv"
  version "0.1.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.32/devenv-0.1.32-aarch64-apple-darwin.tar.gz"
      sha256 "4f9f6678799325b962b5dd74db08be217af7150c7624de35eb04a9d0b6dc2d06"
    end

    on_intel do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.32/devenv-0.1.32-x86_64-apple-darwin.tar.gz"
      sha256 "a1f323cf36f277e8ad0d1d1c85d0331fb3a6c56484e9062184679dc336d2ff78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.32/devenv-0.1.32-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b87c00e4cece2f3622c62d4498ae2dc7e394298f05dfccf3ff736c3a0e94abb8"
    end

    on_intel do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.32/devenv-0.1.32-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9b81d7314ea300c571a671cd99ab3acfd8ef50231d90f66a50e75683be423e2"
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
