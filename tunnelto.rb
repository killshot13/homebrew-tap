class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.14.zip"
  sha256 "c67618f6766c71f50e2e6025bc48e5cd2d4eff8690c2700cd7140ab2d227eb00"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "./tunnelto"
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.14"
    sha256 "e6fc81ad5561e55356fd54ba87687300fa617764ac950ded7ae5bf235cbacb0b" => :catalina
    sha256 "e6fc81ad5561e55356fd54ba87687300fa617764ac950ded7ae5bf235cbacb0b" => :big_sur    
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
