# typed: false
# frozen_string_literal: true

class Dollarlint < Formula
  desc "Validate JSON-family, YAML, and TOML files against their declared JSON Schemas."
  homepage "https://github.com/dollarlint/dollarlint"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.1/dollarlint_0.1.1_darwin_amd64.tar.gz"
      sha256 "ef0b29274cbe4cc2ff2923569b6932ac6eb558e4e364919b92c1da39c0edfc21"

      define_method(:install) do
        bin.install "dollarlint"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.1/dollarlint_0.1.1_darwin_arm64.tar.gz"
      sha256 "3d88c596455a2e526a98da2739d253a04f7c44c40539eb2dcb1eae39db0ee297"

      define_method(:install) do
        bin.install "dollarlint"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.1/dollarlint_0.1.1_linux_amd64.tar.gz"
      sha256 "30292c5d7dbc4ac3ee593b66c72163207c960481a750385bb2576c0ec1fb72ef"

      define_method(:install) do
        bin.install "dollarlint"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.1/dollarlint_0.1.1_linux_arm64.tar.gz"
      sha256 "8544230d4d92d158ac7dff97eefafe48c4cb47bc6b7c5649b0ea88fa96cbdf61"

      define_method(:install) do
        bin.install "dollarlint"
      end
    end
  end

  test do
    system "#{bin}/dollarlint", "--version"
  end
end
