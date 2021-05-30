class Getignore < Formula
  desc "Fetch gitignore files for your projects right from the command-line"
  homepage "https://github.com/haroldadmin/getignore"
  url "https://github.com/haroldadmin/getignore/archive/refs/tags/0.1.0.tar.gz"
  sha256 "cf4a7521e2d0baf98a3eec014ec0f8035d7fd64de3f6fb1ac483e1d14bb3be18"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/haroldadmin/homebrew-getignore/releases/download/getignore-0.1.0"
    sha256 cellar: :any_skip_relocation, catalina:     "3328ea47484abb516d90bfed7e8887ef3ba963f7f497c9353ff72863977b8805"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "dd29a968c8ae467a670d56bd7fffc10ec3ec676dd962ec25ce87a1bf1a940411"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    output = shell_output("#{bin}/getignore --help")
    assert_includes output, "getignore helps you fetch .gitignore files right from your terminal"
  end
end
