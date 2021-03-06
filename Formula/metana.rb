# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metana < Formula
  desc "An abstract migration tool written in Go for Go services."
  homepage "https://github.com/g14a/metana"
  version "2.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/g14a/metana/releases/download/v2.2/metana_2.2_darwin_amd64.tar.gz"
      sha256 "439ca801100baf84f135e34b5c483cf4fcd0611c6d422979e30303d946994728"
    end
    if Hardware::CPU.arm?
      url "https://github.com/g14a/metana/releases/download/v2.2/metana_2.2_darwin_arm64.tar.gz"
      sha256 "2cfbf151c1468e26c0759306824420879df25393b1d03ab2c5afcdfe8e907711"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/g14a/metana/releases/download/v2.2/metana_2.2_linux_amd64.tar.gz"
      sha256 "e675e16ec611b608a7be9caf404b020abb4d2364545ec22a05b3601d983b3f45"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/g14a/metana/releases/download/v2.2/metana_2.2_linux_arm64.tar.gz"
      sha256 "69a1b15eef1f0ad5ba311d455f3b393d214836effcdb8d1030b107ec250ae016"
    end
  end

  def install
    bin.install "metana"
  end
end
