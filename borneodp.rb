# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Borneodp < Formula
  desc "Command Line Interface (CLI) for managing Borneo Data Plane Deployments"
  homepage "https://www.borneo.io/"
  version "v3.17.1"

  URL_DARWIN="https://github.com/borneodata/homebrew-tap/releases/download/v3.17.1/deploy-dataplane_Darwin_all.tar.gz"
  URL_ARM64="https://github.com/borneodata/homebrew-tap/releases/download/v3.17.1/deploy-dataplane_Linux_arm64.tar.gz"
  URL_X86="https://github.com/borneodata/homebrew-tap/releases/download/v3.17.1/deploy-dataplane_Linux_x86_64.tar.gz"
  SHA_DARWIN="1e97acf370ef1fdbc1a7f019bf03d6fdf5291a222e1613b81fba6e6ec44da703"
  SHA_ARM64="606a7e825d316799c6e532ee62f101be26e7ff6c92620ec7275e865a4cea38e7"
  SHA_X86="6b058349739772e4c07a51e6b67fc47851e8b30f1c99dba9be1c2bece9001810"

  on_macos do
    url URL_DARWIN
    sha256 SHA_DARWIN

    def install
      bin.install "deploy-dataplane" => "borneodp"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url URL_ARM64
      sha256 SHA_ARM

      def install
        bin.install "deploy-dataplane" => "borneodp"
      end
    end
    if Hardware::CPU.intel?
      url URL_X86
      sha256 SHA_X86

      def install
        bin.install "deploy-dataplane" => "borneodp"
      end
    end
  end
end
