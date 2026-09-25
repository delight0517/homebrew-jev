class JevEvidenceKit < Formula
  desc "Offline paired-result checker for local AI workflows"
  homepage "https://github.com/delight0517/jev-evidence-kit"
  url "https://github.com/delight0517/jev-evidence-kit/releases/download/v0.1.0/jev-evidence-kit-0.1.0.zip"
  sha256 "ab0d55cb9bfa46fb33b89f91bd354b1bfb77be5e565b9941b20c7190f21ca2cd"
  license "MIT"

  depends_on "python@3.12"

  def install
    source = "jev-evidence-kit"
    libexec.install "#{source}/jev_measure.py"
    libexec.install "#{source}/examples"
    (bin/"jev-evidence-kit").write <<~SH
      #!/bin/bash
      exec "#{formula_opt_libexec("python@3.12")}/bin/python3" "#{opt_libexec}/jev_measure.py" "$@"
    SH
  end

  test do
    assert_match "self-test: 3 checks passed", shell_output("#{bin}/jev-evidence-kit --self-test")
  end
end
