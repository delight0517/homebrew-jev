class JevEvidenceKit < Formula
  desc "Offline paired-result checker for local AI workflows"
  homepage "https://github.com/delight0517/jev-evidence-kit"
  url "https://github.com/delight0517/jev-evidence-kit/releases/download/v0.1.1/jev-evidence-kit-0.1.1.zip"
  sha256 "caeba1e2587e5adc13efcb80104e7455fc4b5079be43b265d700059a7fd8f0f0"
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
    assert_match "usage:", shell_output("#{bin}/jev-evidence-kit --help")
    assert_match "self-test: 3 checks passed", shell_output("#{bin}/jev-evidence-kit --self-test")
  end
end
