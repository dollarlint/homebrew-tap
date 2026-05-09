# typed: false
# frozen_string_literal: true

cask "dollarlint" do
  version "0.1.4"

  on_macos do
    on_intel do
      sha256 "e4f199c853905fe3aaad9873f5df20f524e3371759905159d5676e4808c63892"
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.4/dollarlint_#{version}_darwin_amd64.tar.gz",
          verified: "github.com/dollarlint/dollarlint/"
    end

    on_arm do
      sha256 "371c7ecb902453a428f603b02747bd17a7da70aca8edeb857929085e252f3193"
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.4/dollarlint_#{version}_darwin_arm64.tar.gz",
          verified: "github.com/dollarlint/dollarlint/"
    end
  end

  on_linux do
    on_intel do
      sha256 "8f00c1bc65329ce4512995e9dd34f189146265026d181d8daeb6e428673a3095"
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.4/dollarlint_#{version}_linux_amd64.tar.gz",
          verified: "github.com/dollarlint/dollarlint/"
    end

    on_arm do
      sha256 "e1d6ae941ea4d95ec66bb5deacd8c05cdb151d4380d8ab6988b7a421a344b529"
      url "https://github.com/dollarlint/dollarlint/releases/download/v0.1.4/dollarlint_#{version}_linux_arm64.tar.gz",
          verified: "github.com/dollarlint/dollarlint/"
    end
  end

  name "dollarlint"
  desc "Validate JSON-family, YAML, and TOML files against their declared JSON Schemas"
  homepage "https://dollarlint.dev/"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "dollarlint"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/dollarlint"] if OS.mac?
  end

  # No zap stanza required
end
