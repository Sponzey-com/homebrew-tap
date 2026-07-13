class Devenv < Formula
  desc "CLI-based development environment manager"
  homepage "https://github.com/Sponzey-com/DevEnv"
  version "0.1.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.30/devenv-0.1.30-aarch64-apple-darwin.tar.gz"
      sha256 "bd6b4f933298f2aade1334a6b37a7990c2cded342d82a44ceb72bfd02892f69e"
    end

    on_intel do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.30/devenv-0.1.30-x86_64-apple-darwin.tar.gz"
      sha256 "26863ed94685bdecfc94b7ec1007f0db20cacccc165764e1dfffa8bc11dc5b0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.30/devenv-0.1.30-aarch64-unknown-linux-musl.tar.gz"
      sha256 "790e10f393625aa949494f66a20a9f46ce9a585065b8d6037cf7cfc8397c7cf7"
    end

    on_intel do
      url "https://github.com/Sponzey-com/DevEnv/releases/download/v0.1.30/devenv-0.1.30-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0cbc17e200cb7ca4c23bca5ea93e08e0d2acdcac910a99c21149c0b5c8be2b4"
    end
  end

  def install
    bin.install "devenv"
    doc.install "USER_GUIDE.md"
  end

  test do
    assert_match "devenv #{version}", shell_output("#{bin}/devenv --version")
  end
end
