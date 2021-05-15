class Getignore < Formula
  desc "Fetch gitignore files for your projects right from the command line"
  homepage ""
  url "https://github.com/haroldadmin/getignore/releases/download/0.0.1/getignore-darwin-amd64"
  sha256 "747fd55b3a5dcaf3934c66fbe7dcbd59e13ef3e98f4a89a5949f1dcc8918c6fc"
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
