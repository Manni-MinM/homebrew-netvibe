class NetvibeCli < Formula
  desc "NetVibe Answerer CLI"
  homepage "https://github.com/SNL-UCSB/netvibe"
  version "3.11.0"
  url "https://github.com/Manni-MinM/homebrew-netvibe.git"

  def install
    arch = if Hardware::CPU.intel?
      "netvibe-cli-darwin-amd64"
    else
      "netvibe-cli-darwin-arm64"
    end

    bin.install "#{buildpath}/bin/#{arch}" => "netvibe-cli"
  end

  service do
    run [opt_bin/"netvibe-cli", "daemon"]
    keep_alive true
    environment_variables(
      HOME: ENV["HOME"],
    )
    log_path var/"log/netvibe-cli.log"
    error_log_path var/"log/netvibe-cli-error.log"
  end

  test do
    system "#{bin}/netvibe-cli", "--help"
  end
end
