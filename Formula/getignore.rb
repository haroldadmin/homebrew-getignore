class Getignore < Formula
  desc "Fetch gitignore files for your projects right from the command-line"
  homepage "https://github.com/haroldadmin/getignore"
  url "https://github.com/haroldadmin/getignore/archive/refs/tags/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "760774940f6406f6d457ba6c251cffe3ba47427d3619826bd08dcfe84b4f94e5"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    output = shell_output("#{bin}/getignore --help")
    assert_includes output, "Usage: getignore"
  end
end
