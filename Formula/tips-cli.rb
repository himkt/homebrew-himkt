class TipsCli < Formula
  desc "A CLI to collect tips for your own"
  homepage "https://github.com/himkt/tips-cli"
  url "https://github.com/himkt/tips-cli/releases/tag/0.1.0"
  sha256 "9444944707a4ffb8fe5d169fac40970e46c93ff025af9cb1d21cf6e3ca248887"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/himkt/tips-cli/releases/download/0.1.0/tips-cli-aarch64-apple-darwin"
      sha256 "4bfe8fd914dc7680db6d56a0bd1f8ad0acf985153426edd509db451472706c53"
      def install
        bin.install "tips-cli-aarch64-apple-darwin" => "tips-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/himkt/tips-cli/releases/download/0.1.0/tips-cli-x86_64-unknown-linux-gnu"
      sha256 "dbc1d5464cad7622b2a62e68cb893056391629b2e36837735eae9495aa0ffa59"
      def install
        bin.install "tips-cli-x86_64-unknown-linux-gnu" => "tips-cli"
      end
    end
  end
end
