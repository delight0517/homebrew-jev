# Jev Evidence Kit for Homebrew

Install the free, MIT-licensed offline paired-result checker on macOS:

```sh
brew tap delight0517/jev
brew install jev-evidence-kit
jev-evidence-kit --help
jev-evidence-kit "$(brew --prefix jev-evidence-kit)/libexec/examples/passing_pair.json"
```

The formula installs Python 3.12 and uses no third-party Python packages. To check your own task, copy `examples/pair_template.json` from the project ZIP, fill in expected and observed results, then pass that file path to `jev-evidence-kit`.

This tool checks exact answers against an expected answer. It does not call or route models, verify provider billing, or guarantee savings. The bundled example is synthetic, not a benchmark.

- Source: https://github.com/delight0517/jev-evidence-kit
- Browser demo: https://delight0517.github.io/jev-evidence-kit/
- Release ZIP: https://github.com/delight0517/jev-evidence-kit/releases/tag/v0.1.1
