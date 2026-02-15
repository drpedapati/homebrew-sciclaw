class Sciclaw < Formula
  desc "Autonomous paired scientist CLI forked from PicoClaw"
  homepage "https://github.com/drpedapati/sciclaw"
  url "https://github.com/drpedapati/sciclaw.git", using: :git, tag: "v0.1.6", revision: "981bcdd707344a0bb1d2ec5a2ad6c9edb3ef4712"
  license "MIT"
  version "0.1.6"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(output: bin/"sciclaw", ldflags: ldflags), "./cmd/picoclaw"
    (bin/"picoclaw").make_symlink bin/"sciclaw"
    pkgshare.install "skills"
    (pkgshare/"templates"/"workspace").install Dir["pkg/workspacetpl/templates/workspace/*.md"]
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/sciclaw --help")
    assert_match "Usage:", shell_output("#{bin}/picoclaw --help")
    assert_match "v#{version}", shell_output("#{bin}/sciclaw --version")
  end
end
