class Cpdf < Formula
  desc "Coherent PDF Command-line Tools to modify PDF files"
  homepage "https://community.coherentpdf.com/"
  version "2.8"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://raw.githubusercontent.com/coherentgraphics/cpdf-binaries/06ce0022c741621e8b6aabba15e3f164a8b4daa6/OSX-Intel/cpdf"
      sha256 "6f43a141447a71a5205eac180ad739c10f394638d311912fef73f95381673812"
    end
    if Hardware::CPU.arm?
      url "https://raw.githubusercontent.com/coherentgraphics/cpdf-binaries/06ce0022c741621e8b6aabba15e3f164a8b4daa6/OSX-ARM/cpdf"
      sha256 "d4c28bc920da89f8b7ddf40732cdeaba5bbe677ea3f8be1a9836c3a2dfe8254f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? 
      if Hardware::CPU.is_64_bit?
        url "https://raw.githubusercontent.com/coherentgraphics/cpdf-binaries/06ce0022c741621e8b6aabba15e3f164a8b4daa6/Linux-Intel-64bit/cpdf"
        sha256 "efca6db7f6293021d653bc0d0ca20e11970701497bf70acdab3a3bac5d57b28f"
      else
        url "https://raw.githubusercontent.com/coherentgraphics/cpdf-binaries/06ce0022c741621e8b6aabba15e3f164a8b4daa6/Linux-Intel-32bit/cpdf"
        sha256 "1cb206f50e6f911e931baf4f8c0ada0b36fecca5199739af2c981c3ab9a96f2f"
      end
    end
    if Hardware::CPU.arm?
      url "https://raw.githubusercontent.com/coherentgraphics/cpdf-binaries/06ce0022c741621e8b6aabba15e3f164a8b4daa6/Linux-ARM-64bit/cpdf"
      sha256 "4003a5333fed2007540cf1f30bb748e67d8c813ed949ec597816a3b350562ea2"
    end
  end

  def install
    bin.install "cpdf"
  end

  test do
    system "#{bin}/cpdf", "-version"
  end
end
