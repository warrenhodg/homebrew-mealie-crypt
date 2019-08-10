class MealieCrypt < Formula
  desc "A tool for groups of people to manage enrypted key-value pairs using ssh keys"
  homepage "https://github.com/warrenhodg/mealie-crypt"
  url "https://github.com/warrenhodg/mealie-crypt/archive/1.2.3.tar.gz"
  sha256 "9ebd49b74dae89b5259d2b4cc5dfdd2277e6aa5a914c169cafbc5a4db35e3708"

  depends_on "go" => :build

  def install
    system "make", "mac"
    bin.install "./mealie-crypt.mac" => "mealie-crypt"
  end

  test do
    system "#{bin}/mealie-crypt" "--version"
  end
end
