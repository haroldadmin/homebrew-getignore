class Getignore < Formula
  desc "Fetch gitignore files for your projects right from the command-line"
  homepage "https://github.com/haroldadmin/getignore"
  url "https://github.com/haroldadmin/getignore/archive/refs/tags/0.0.2.tar.gz"
  sha256 "f4424c57f401e8c313749ba236954ac07738344bb943bf4c8a0d89bc58ec6b28"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/haroldadmin/homebrew-getignore/releases/download/getignore-0.0.2"
    sha256 cellar: :any_skip_relocation, catalina:     "16c5eafa87debece376c0f1fa5a0ed342012e2c849a7390b096a4d93ff17fbd4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aab5b2cba8f9b06c98b49739b1882bc16e17e2f473d7422e52bffa10d0769f82"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    output = shell_output("#{bin}/getignore --help")
    assert_includes output, "Fetch .gitignore files right from the terminal"
  end
end
