class Sciclaw < Formula
  desc "Autonomous paired scientist CLI forked from PicoClaw"
  homepage "https://github.com/drpedapati/sciclaw"
  url "https://github.com/drpedapati/sciclaw/archive/refs/tags/v0.1.2.tar.gz", using: GitHubPrivateRepositoryDownloadStrategy
  sha256 "1ff001696979612312580767c0b3b027d76d4e8df9d45739fadd4acfa89cbf0d"
  license "MIT"
  version "0.1.2"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"sciclaw"), "./cmd/picoclaw"
    (bin/"picoclaw").make_symlink bin/"sciclaw"
    pkgshare.install "skills"
    (pkgshare/"templates"/"workspace").install Dir["pkg/workspacetpl/templates/workspace/*.md"]
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/sciclaw --help")
    assert_match "Usage:", shell_output("#{bin}/picoclaw --help")
  end
end
