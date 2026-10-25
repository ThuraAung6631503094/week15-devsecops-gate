# week15-devsecops-gate

Week 15 DevSecOps lab (KOSEN69 Software Security). **Teaching repo.**

- `app.py` — the lab's fail-closed Flask service (`secure_service.py`).
- `.github/workflows/security-ci.yml` — the lab's security gate: Semgrep (SAST),
  Trivy (SCA + IaC) and Gitleaks (secrets). Each tool runs a *report* step that
  uploads SARIF to the Security tab, then a *gate* step that fails the build on
  HIGH/CRITICAL findings or any secret.

Pull requests named `red-*` contain **deliberately planted test defects** (an old
dependency, a root container, a fake token) for the Red-vs-Blue "Break the Build"
exercise. They are never merged, and no real credentials are used.
