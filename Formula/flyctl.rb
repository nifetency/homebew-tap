# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.126"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.126/flyctl_0.0.126_macOS_x86_64.tar.gz"
    sha256 "96442235f41382f885b6c7a75d5b121945409373c20f60a3bab4eff75a03be37"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.126/flyctl_0.0.126_Linux_x86_64.tar.gz"
      sha256 "424ae6b44c21945879ee73e6789c1622aeff332ec088d2ad276f8be0f6ed41dd"
    end
  end

  def install
    bin.install "flyctl"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
