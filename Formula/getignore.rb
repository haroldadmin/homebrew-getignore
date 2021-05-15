class Getignore < Formula
  desc "Fetch gitignore files for your projects right from the command-line"
  homepage "https://github.com/haroldadmin/getignore"
  url "https://github.com/haroldadmin/getignore/archive/refs/tags/0.0.2.tar.gz"
  sha256 "f4424c57f401e8c313749ba236954ac07738344bb943bf4c8a0d89bc58ec6b28"
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
